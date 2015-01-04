---
layout: post
title: "Object Ids in Ruby"
date: 2013-02-06 11:26
comments: true
sharing: true
categories: [Ruby, Coding]
---

In my effort to master Ruby this year, I started this morning working through [Ruby Koans](http://rubykoans.com). I just completed these tests and was intrigued by the comment in the second koan:

    def test_some_system_objects_always_have_the_same_id
      assert_equal 0, false.object_id
      assert_equal 2, true.object_id
      assert_equal 4, nil.object_id
    end

    def test_small_integers_have_fixed_ids
      assert_equal 1, 0.object_id
      assert_equal 3, 1.object_id
      assert_equal 5, 2.object_id
      assert_equal 201, 100.object_id

      # THINK ABOUT IT:
      # What pattern do the object IDs for small integers follow?
    end

To put it another way:

    >> (0..50).each { |i| print i.object_id, ' ' }

What would you expect to see as output? You can find the answer in [Fixed Object Id for System Objects and Small Integers in Ruby](http://stackoverflow.com/questions/3952730/fixed-object-id-for-system-objects-and-small-integers-in-ruby).

But why does this happen? I did a little digging and found these 2006 articles by Caleb Tennis on [The Ruby VALUE](http://www.oreillynet.com/ruby/blog/2006/01/the_ruby_value_1.html) and [Ruby Values and object_ids](http://www.oreillynet.com/ruby/blog/2006/02/ruby_values_and_object_ids.html). In the first article he points out that:

>The first point of interest is the VALUE - Ruby’s internal representation of its objects. In the general sense, a VALUE is just a C pointer to a Ruby object data type. We use VALUEs in the C code like we would use objects in the Ruby code.

>...for performance purposes, Ruby doesn’t use the VALUE as a pointer in every instance. For Fixnums, Ruby stores the number value directly in the VALUE itself. That keeps us from having to keep a lookup table of every possible Fixnum in the system.

There is also a good Stack Overflow answer to this question of [how object assignment works in Ruby](http://stackoverflow.com/questions/3430280/ruby-how-does-object-id-assignment-work):

>In MRI the `object_id` of an object is the same as the `VALUE` that represents the object on the C level. For most kinds of objects this `VALUE` is a pointer to a location in memory where the actual object data is stored. Obviously this will be different during multiple runs because it only depends on where the system decided to allocate the memory, not on any property of the object itself.

>However for performance reasons `true`, `false`, `nil` and `Fixnum`s are handled specially. For these objects there isn't actually a struct with the object's data in memory. All of the object's data is encoded in the `VALUE` itself. As you already figured out the values for `false`, `true`, `nil` and any `Fixnum` `i`, are `0`, `2`, `4` and `i*2+1` respectively.

>The reason that this works is that on any systems that MRI runs on, `0`, `2`, `4` and `i*2+1` are never valid addresses for an object on the heap, so there's no overlap with pointers to object data.

I highly recommend using a koan-based approach to learning the details of a new language. There's a good list of links for various languages in ["Koan-a-Copia!"](http://rubygeek.github.com/2011/01/22/koan-a-copia/) article by [Nola Stowe](https://twitter.com/rubygeekdotcom).