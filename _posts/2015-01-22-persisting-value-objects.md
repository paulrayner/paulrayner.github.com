---
layout: post
title: "Persisting Value Objects"
date: 2015-01-22 10:00:00 -0700
tags: [DDD]
excerpt: "It can be challenging sometimes to know how best to persist value objects to a data store, especially if you are using a RDBMS. There are a variety of options to choose from, however, depending on your needs and constraints."
comments: true
---

It can be challenging sometimes to know how best to persist value objects to a data store, especially if you are using a RDBMS. There are a variety of options to choose from, however, depending on your needs and constraints.

Examples below are based on my [Ruby port of the DDD sample app](https://github.com/paulrayner/ddd_sample_app_ruby). Here is a class diagram showing the `Cargo` aggregrate, which consists of the `Cargo` entity (as the aggregate root) and a number of value objects, such as `Itinerary` and `RouteSpecification` that are also part of the `Cargo` aggregate. This is based on examples given in Eric Evans's [Domain-Driven Design](http://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215) book.

![Cargo entity and associated value objects](/assets/cargo.png)
*Figure 1. Cargo entity and associated value objects*

## Inline Value Object's Fields to Entity's Table

This is the simplest arrangement, both in terms of ORM mapping and database schema design. It also is an easy way to support refactoring a value object out of an entity, since only the objects and the ORM mapping would need to change; there is no change to the underlying database schema.

An example of this would be refactoring properties such as `Origin`, `Destination` and `Arrival Deadline` out of their original location in the [`Cargo` entity](https://github.com/paulrayner/ddd_sample_app_ruby/blob/master/domain/cargo/cargo.rb) and into a new [`RouteSpecification` value object](https://github.com/paulrayner/ddd_sample_app_ruby/blob/master/domain/cargo/route_specification.rb). The `RouteSpecification` value object, having a one-to-one, relationship with the `Cargo` entity, lends itself very naturally to this kind of approach. The same would be true for the `Itinerary` value object.

## Create Database Table for each of Value Object Type and Represent Data as Field

In the DDD sample app, a single `Itinerary` value object has many `Leg` value objects. So an example of this approach would be to persist the `Legs` value object to a `Legs` database table that has a foreign key back to the Itinerary database table. This is a common approach for 1-Many relationships. However, see the next serialization approach as perhaps a more effective solution in many cases.

## Serialize the Value Object and Store in Field in Entity's Table

This is a less common than creating a separate table for the value object as in the previous approach, but serialization is actually the method I would recommend in most cases where you have a one-to-many relationship. For example, persist `Itinerary` and all its `Leg` value objects as a serialized object grap and then inline it into the Entity's table within the Cargo database table.

Use an appropriate serialization format such as plain text, XML, YAML or JSON. Databases such as Postgres and SQL Server provide native format for such approaches. For a Postgres example, see Vaughn Vernon's post [The Ideal Domain-Driven Design Aggregate Store?](https://vaughnvernon.co/?p=942) For an example of manipulating XML with SQL Server, see [Manipulating XML Data in SQL Server](https://www.simple-talk.com/sql/database-administration/manipulating-xml-data-in-sql-server/).

Querying and indexing options may be limited as in SQL Server 2008 XML columns, or even non-existent in many RDMS's. An ORM will typically need custom code or a custom type, such as in Hibernate, to manage the serialization/deserialization of each collection.

Serializing objects to text-based formats gives you human-readable database data, but is comparatively slow and potentially huge in size compared to regular database columns. It is important to verify that this approach can handle the performance needs before going too far with it. Also, if the serialized value object stored in the DB is opaque (e.g., the only query performed on the column is to serialize/deserialize based on primary key lookep) then consider using a much faster (and typically smaller) format like binary.

## Combined RDMS and Document Database Approach

In the Java space, SpringSource has been doing some very interesting work for the [Spring.Data.Commons and related projects](http://www.springsource.org/spring-data) in the area of what they call 'cross-store persistence.' [^1] Portions of your object are persisted to a RDBMS and other portions are persisted to NoSQL stores (and the framework handles persisting and rehydrating the right parts to/from the right data store for you). These are all OSS solutions.

## Use a Document Database

The `CargoRepository` could use an `Itinerary` document Id stored in a `Cargo` field to retrieve the `Itinerary` value object stored in a document database such as MongoDB, RavenDB or CouchDB. Note that many document databases offer transparency of query into the contents of the 'document' (i.e. serialized value object in this case), which removes the need to predict which properties, etc. of the value object need to be stored separately in the table as additional fields just so that they can be queried.

To Summarize:

| O-R | Represent Data in Fields | Serialize Object | Reference to Other Storage |
|-----|---------------------------|------------------|----------------------------|
| **Inline in Entity Table** | **1-to-1**<br>• Good O-R mapper support<br>• Straightforward object/DB schema versioning<br>• Factoring fields into Value Object doesn't change DB schema | **1-to-Many/1-to-1 Complex**<br>• Version management of serialization<br>• Some performance concerns<br>• Query limitations<br>• Field length limitations | **Document Id**<br>• Hybrid approach – store document Id in Entity's table and lookup in Repository<br>• Queries supported by document databases |
| **Separate Table** | **1-to-Many**<br>• Good O-R mapper support, but must put ID field in Value Object<br>• Straightforward object/DB schema versioning | **X** | **X** |

[^1]: Sourced from Steve Bohlen posting to DDD Immersion Alumni Mailing List on 11/17/2011