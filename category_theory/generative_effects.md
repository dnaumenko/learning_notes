# Digest

f: X -> Y can be seen as an observation of an object X by specific relation f.

Our observation function f could preserve some aspects of object X. For example: 

* order-preserving if x <= y, then f(x) <= f(y)
* metric-preserving if |x - y| = |f(x) - f(y)|
* addition-preserving if f(x + y) = f(x) + f(y)

Some real-world examples for rational numbers:
* order-preserving: f(x) = x + 1, f(x) = x - 1
* no order-preserving: f(x) = -x
* metric-preserving: f(x) = x + 1
* no metric-preserving: f(x) = 0
* addition-preserving: f(x) = 2 * x
* no addition-preserving: f(x) = x + 1

The more aspects we preseve during f - the more we know about structure of observation results upfront. 

The things we miss if lost some aspects during f called `generative effects`.

# Terminology

* generative effects
* Haase diagram