This file is simply meant to contain what I’ve found and used so far on functional programming.
## What is functional programming?
Functional programming (FP) is a paradigm which focuses on functions, avoiding changing states and mutable data.<br/>
The functions describe behavior and are separate from the data. They are injective, meaning the same input will always result in the same output. They are not dependent on anything outside their scope and don’t alter data outside their scope (functions are pure). They can be used as any other data type, so they don’t need to be evaluated before they are assigned to a variable.<br/>
The data in FP are immutable, which is what causes the functions to become pure.<br/>
Iteration in functional languages is done using recursion (remember one can’t use an index to loop over or change some variable from true to false, because data is immutable, so there is no for or while). This means there is a base case, and a recursive function calls itself until that base case is reached.

Functional languages can be categorized by whether they use strict (eager) or non-strict (lazy) evaluation, concepts that refer to how function arguments are processed when an expression is being evaluated. Strict evaluation always fully evaluates function arguments before invoking the function. Lazy evaluation does not evaluate function arguments unless their values are required to evaluate the function call itself.
## Why is it useful?
The pure function/immutable data make concurrency easier, since one doesn’t have to worry about using changed data.
## Important terms
A functor is a function that is type, identity and composition preserving. They are containers of values and applying a function to them unwraps the value, changes it and returns the container with the changed value. A functor supports the operation of map. Also, you can chain map calls, because the map function returns another functor.
An example of a functor is Either e (since Either takes two inputs, one has to be fixed), List

An applicative also alters the container of a value. (All applicatives are also functors.)

