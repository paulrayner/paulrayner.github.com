---
layout: post
title: "Plotting Paths to Cloud Migration"
date: 2020-03-23 10:00:00 -0600
tags: [Cloud, Design, DDD, Architecture]
excerpt: "Using the up or out plane to plot the migration path, it becomes apparent that many migrations aren't a one-shot type of endeavor. — Gregor Hohpe"
image: cloud-strategy/massimo-adami-JnqwC6dDL8c-unsplash.jpg
comments: true
---

> Using the up or out plane to plot the migration path, it becomes apparent that many migrations aren't a one-shot type of endeavor.
> 
> — Gregor Hohpe

Have your stakeholders expressed confusion in deciphering your cloud migration strategy? Are you using the typical lengthy variations verbs starting with "R" (rehost - replatform - rearchitect - retire)? Or perhaps an opaque, complicated framework that actually makes your approach less clear? A simple visual model can go a long way in providing clarity in navigating the inevitable complexity of a cloud migration.

## Up or Out

The article [Enterprise IT can move up or out (or both)](https://cloud.google.com/blog/topics/perspectives/enterprise-it-can-move-up-or-out-or-both), describes the "up or out" framework as a way to empower both the business and IT to approach a cloud migration more collaboratively, cutting through much of the hype and technical complexity. This model can help enterprises chart their cloud adoption journey delineates cloud migration along two axes — up and out.

![Cloud Adoption Journey](/assets/cloud-strategy/cloud_adoption_journey.max-1000x1000.png){: .center-image width="800"}

On-premise applications are located in the bottom left quadrant. The horizontal axis represents moving "out" from on-premises to the cloud, and the vertical axis describes modernizing applications to operate further "up" the stack, further away from infrastructure (servers and hardware details).

> A cloud-based IT operating model has been shown to offer significant advantages in terms of rapid deployment, elastic scalability, resilient operations, and security. However, large enterprises can't simply wake up one day with all their applications running in the cloud. Thus, every enterprise's move to the cloud is at least initially a hybrid cloud scenario, where some workloads remain on-premises and other workloads run in the cloud.
> 
> — Gregor Hohpe

### Moving Up The Stack

One choice you can make is to move your migrations up the stack. This path is the journey of decoupling your applications from your current on-premise infrastructure.

For example, as an initial step you could transition from running a monolithic application on dedicated services to a Platform-As-A-Service (PaaS) model that deploys applications and services using containers. Or in going further by utilizing SaaS services for certain business capabilities that would benefit from this approach.

![Up The Stack](/assets/cloud-strategy/up-the-stack.jpg){: .center-image width="400"}

Hohpe highlights several key advantages of moving up the stack:

- **Elasticity** - Application deployment becomes automated, making it easy to add or subtract capacity as needed.
- **Resilience** - Operations also become more resilient because new instances can be rapidly deployed in case of failure, allowing PaaS or serverless platforms to withstand a server failure without visible customer impact.
- **Cost Reduction** - Thanks to smaller deployable units, hardware can be more efficiently utilized, thus reducing run costs.
- **Decoupling/Portability** - Applications become more portable when they are better isolated from infrastructure details, as their containers may be deployed on a variety of infrastructures.

Moving up the stack may be a challenging effort, one which requires you to fundamentally change the way in which you build applications and operate the infrastructure that supports them. Modularity and decoupling from a business domain perspective becomes essential.

### Out to The Cloud

The second option is to lift, shift, and replatform existing applications out into the cloud. Some advantages mentioned by Hohpe in moving an application unchanged from an existing on-premises data center to the cloud and shifting the operational model to one that's more automated include:

- Better economies of scale allow for more cost-efficient operations.
- Automated patching discipline improves security because it assures that no software with known vulnerabilities is run.
- Increased transparency enables more efficient IT asset management, for example by rightsizing servers or detecting and retiring unused IT assets.

Taking an initial lift and shift approach into the cloud along the horizontal axis may make it easier to move vertically (optimize/re-architect) later, once the applications are already running in the cloud. The first reason is primarily technical: the application, data and traffic have already been completed, paving the way for further optimization and improvement when the timing and cost is more favorable. The second reason is that doing such migrations enables the organization to move to more of a "cloud lifestyle" and cultivate the necessary skills to perform future migrations more successfully.

Don't underestimate the importance of skills development and cultivating cultural memory for new approaches. Many organizations fall into the trap of assuming that migrating to the cloud is primarily a technical journey, but then discover too late that it actually requires rethinking how to do business - touching every aspect of product development, application development, deployment, support, and operations.

### Combining Cloud Migration Approaches

Don't think of this as a blanket all-or-nothing approach. Combining various approaches into a progressive transformation towards cloud-centric operations reduces risk and improves time-to-value.

As Hohpe points out:

- Lifting existing applications and replatforming them onto cloud infrastructure minimizes initial effort, avoiding the costs of redevelopment, and allowing an enterprise to transform its infrastructure acquisition and scaling processes while minimizing impact to existing operations models.
- Adjusting operations models to increase the use of automation and cloud-native tooling accelerates the overall transformation and maximizes the value from abstracted infrastructure services.
- Finally, decomposing application elements to take advantage of managed cloud services, such as migrating off of self-managed My SQL databases onto provider-managed Database-as-a-Service, requires some additional effort but lays the foundation for moving beyond seeing cloud as yet another infrastructure provider.

> Not only is combining up and out allowed, it's encouraged. We think of it as a cloud-native hybrid model, where applications are deployed as containers or functions and can be easily shifted from on-premises to the cloud as needed, all while maintaining a consistent deployment, run-time, and management framework.
> 
> — Gregor Hohpe

Hohpe recommends you consider asking a few questions:

- Which elements of an application or service would benefit most from an event-driven, serverless approach?
- Which elements of a service require rapid code releases or the ability to validate new features using A/B testing (meaning that a new version of the software is made available to a percentage of users)?
- Which elements change infrequently, but would benefit from automated scaling and deployment?

### Multiple Paths Per Application

With the answers to these questions, you can begin to decompose application capabilities, workloads, and components and map them against the up or out framework, thus presenting the organization with a pragmatic migration approach that maximizes value.

Remember, for most applications you are not locked into a single direction. On the up or out model, plot the path for each application or class of applications in your cloud migration strategy. Rather than thinking of each migration as a single jump, plot a path to cloud migration that makes sense in your context.

Plotting a path for individual workloads and architectural elements on the up or out framework can help IT decision makers focus on the benefits achieved by re-platforming, re-architecting, or a combination of the two. It's typical and in fact desired that different components take unique paths. Avoid a [Leeroy Jenkins situation](https://www.dictionary.com/e/memes/leeroy-jenkins/) in your enterprise cloud migration by taking a more informed and nuanced approach by migrating the individual workloads and architectural elements in your context.

### Plotting Paths to the Cloud

The visual model also communicates migration paths over time in an approachable manner that can be shared with a wide audience in both business and IT. For example, in the article Hohpe provides an example of what this might look for an enterprise ecommerce application.

In the ecommerce example, the retailer's customer-facing front end frequently required feature updates to differentiate them in a competitive retail market. They also wanted to utilize A/B testing to ensure that they were delivering the right features. By incrementally isolating and rewriting the web front end and moving it up the stack in containers, they could also support this with a new automated CI/CD pipeline to enable rapid delivery to support excel and innovate.

The ecommerce mid-tier application needed refactoring and re-architecting, but "more immediate value could be generated by shifting to an automated scale-out model and gaining operational efficiencies in the cloud." This is a good example of setting priorities correctly and focusing on reducing the time-to-value of migration efforts.

The retailer's back-end catalog systems changed infrequently and were hosted on well-understood and easily maintained systems. There did not seem to be value in devoting effort to migrating them, plus any attention devoted to that would distract from the other more valuable concerns. To focus their initial energy, they decided to keep the back-end systems in place until they can replace them completely in the future.

> Taking this approach allowed the retailer to minimize the time and effort required to accomplish their primary goal—rapid iteration of a customer experience that was becoming stale. They also gained operational and capital efficiencies and set themselves in a good position to migrate their catalog data to the cloud when the time and price were right for them.
> 
> — Gregor Hohpe

![Enterprise IT Migration](/assets/cloud-strategy/enterprise_IT_oYsbpz5.max-800x800.png){: .center-image width="800"}

Separating out elements and migrating them up and out enables an organization to target the migration of more valuable capabilities earlier, creating opportunities to excel and innovate without being shackled to software elements that are harder to modify. This relates to the notion of *domain-distillation* in strategic domain-driven design (DDD), where more valuable software elements are isolated into new components that can be developed and deployed independently of the existing systems. We'll be talking about options for this in later articles.

*Note: In the case of a large, mission-critical and highly coupled (i.e. monolithic) application, a migrate-then-update journey might also be a good choice, after the distillation and movement up the stack of valuable capabilities. Why? As an initial step, moving to the cloud horizontally is going to be faster (and typically less risky) than trying to re-architect an entire application while migrating it, even though such an approach may be an ultimately longer journey than directly traveling the hypotenuse.*

### Communicating Your Cloud Strategy

The up or out framework helps you ask the right questions about how best to approach each application, and determine if it can be divided into elements that could each be migrated separately.

The simple up or out visual model encourages collaborative conversations about the relative tradeoffs and risks that might be encountered along each path. These conversations need to push past apparently conflicting priorities in seeking alignment between business and technical priorities.

**If your cloud strategy seems to be too good to be true, it probably is.** There are always tradeoffs. Plans need to be adjusted as the organization learns. As with any effort, your plan needs to be realistic from both a business and technical perspective, with clear goals and measures of success. To be successful, goals must to be communicated effectively to both technical and non-technical stakeholders so that there is the necessary buy-in and trust to move forward with the plan, and adjust as situations change during implementation.

> Simple but evocative frameworks like "up or out" can help IT decision makers navigate the inevitable complexity of a cloud migration. Like any good model, simplicity is a feature, not a bug, as it helps keep the focus on the desired outcome and is easily communicated to a variety of audiences.
> 
> — Gregor Hohpe

For more details, see Gregor Hohpe's excellent [Cloud Strategy: An Architect Elevator Guide to Successful Cloud Migration](https://leanpub.com/cloudstrategy) ebook.

Photo of desserts by [Massimo Adami](https://unsplash.com/@massimo_adami?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](http://unsplash.com).