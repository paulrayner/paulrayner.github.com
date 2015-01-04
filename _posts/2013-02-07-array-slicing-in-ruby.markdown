---
layout: post
title: "Array Slicing in Ruby"
date: 2013-02-07 10:03
comments: true
sharing: true
categories: [Ruby, Coding]
---

I've found the Ruby Koans to be brilliant for exposing a learner to aspects of the language that are not obvious, or even weird, at first glance. 

#####Indexing Ruby Arrays

For example, let's look at a koan for accessing array elements:

    def test_accessing_array_elements
      array = [:peanut, :butter, :and, :jelly]

      assert_equal :peanut, array[0]
      assert_equal :peanut, array.first
      assert_equal :jelly, array[3]
      assert_equal :jelly, array.last
      assert_equal :jelly, array[-1]
      assert_equal :butter, array[-3]
    end

This is my first time seeing negative array references in any language. I was able to surmise (correctly) that they refer to entries counting backwards from the end of the array.

{% blockquote Core API Documents - Array, http://www.ruby-doc.org/core-1.9.3/Array.html %}
A negative index is assumed to be relative to the end of the array—that is, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.
{% endblockquote %}

According to the Core API docs, indexing an array can also give us `nil`:

    ary[index] → obj or nil

Getting a `nil` would seem to be the likely behavior if we try to index beyond the boundary of the array. Let's try it:

    > array [4]
    => nil 

As expected, we get `nil`. 

So far, so good. Indexing seems to work in a way mostly familiar from past experience in other languages.


#####Slicing Ruby Arrays

Now let's try slicing, not indexing, arrays. The call, according to the Core API docs, is of the form:

    ary[start, length] → new_ary or nil

So the array[s, n] syntax means: retrieve n elements from the array starting by the s-th position, unless there is some reason to return `nil`.

Let's use the same array as before, adding it in IRB:

    > array = [:peanut, :butter, :and, :jelly]
     => [:peanut, :butter, :and, :jelly] 

Let's get the first array element:

    > array[0, 1]
    => [:peanut] 

Which says, get me the relevant slice of the array starting at position zero, with a length of one. No difficulties so far. 

 If you try to access elements from the array using n=0, you will get [] as a result (within the range of the array).

Now, let's try _slicing_ (instead of accessing via index) beyond the end of the array:

    > array [5,0]
    => nil 

    > array [6,10]
    => nil 

No matter what starting point we try after 5, or what length we specify, we will get `nil`. Once again, straightforward and expected behavior.

Here's where it got a little weird for me:

    > array [4,0]
    => [] 

    > array [4,1]
    => [] 

    > array [4,100]
    => []

When we specify a starting point of 4, we get an empty array, regardless of how many elements we request. The semantics are subtly different at this boundary point. According to the Core API docs, it's a special case.

The issue arises because I'm used to thinking about accessing arrays, but this is slicing. The way to think about slicing needs to be different. As a [response to this question on Stack Overflow points out](http://stackoverflow.com/questions/3568222/array-slicing-in-ruby-looking-for-explanation-for-illogical-behaviour-taken-fr), treat the first number when you slice not as identifying the element, but *places between elements*, in order to be able to define spans (and not elements themselves):

      :peanut   :butter   :and   :jelly
    0         1         2      3        4

What this means is that 4 is still within the array, from a slicing perspective; if you request 0 elements, you get the empty end of the array. But since there is no index 5, it's outside the bounds of the array, you can't slice from there. Indexing, of course, refers to the elements themselves.

One [final example](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/380637), using assignment:

    t = 'hi'
    t[0,0] = '('
    t[3,0] = ')'
    t
    => "(hi)"

In Ruby Koans these are the tests that highlight the differences:

    def test_slicing_arrays
      array = [:peanut, :butter, :and, :jelly]

      assert_equal [:peanut], array[0, 1]
      assert_equal [:peanut, :butter], array[0, 2]
      assert_equal [:and, :jelly], array[2, 2]
      assert_equal [:and, :jelly], array[2, 20]
      assert_equal [], array[4,0]
      assert_equal [], array[4,100]
      assert_equal nil, array[5,0]
    end


---


Thanks also to the [My Brainstormings blog](http://mybrainstormings.wordpress.com/2012/09/10/arrays-in-ruby/) for additional help with understanding how arrays work in Ruby.