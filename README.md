# Trackmob Coding Challenge

Welcome to the Trackmob Coding Challenge!

When you are collecting finances to charge client, you should care
with monthly frequency and payment day. We have prepared a simple 
database schema to model this. Given a date an algorithm needs to
calculate if it is possible or not to charge in the current month.

##Rules:
- Frequency unique(0) should be charged only one time in the first month.
- If date is higher than payment day, then it must not be charged.

We don't handle if it is already collected or not.

We've set up some basic infrastructure with rspec, sqlite and the
sequel gem. After installing all dependencies you should be able to
run the tests with either `rake` or `rspec`. Note that they are
failing.

You should be able to complete the task in around 1h. If it takes you
longer, rethink your approach: there might be a simpler way.

But most importantly: TRY TO FIND A CLEAN AND READABLE SOLUTION TO THE
PROBLEM!

## Bonus questions

- The class name `Collector` isn't optimal. Where would the
  `payments_collected_in` method live in a more realistic application?
  What would be the class name?

- How would you extend the data model to support recollection?

- Can you suggest a data structure that makes collect payments easy
  and fast? What would be the trade-offs?

## Submitting your work

Commit your changes and send us your results as a git bundle. Here's
how to do that:

    $ git bundle create trackmob-collector.bundle master

Just to check if stuff worked, you can clone from this file with

    $ git clone -b master trackmob-collector.bundle

That's all. Happy hacking!
