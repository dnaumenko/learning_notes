A set is just a collection of some items. If we care about duplicates, we call such them bags, and if care about order - we call them lists.

## Definition 

* $\{1, 2, 3\}$ - set with 3 elements

## Operations and theirs properties
* Equality: $A = B$ and $A \neq B$
* Belonging:  $a \in X$, means $a$ belongs to set $X$
* Subset: $A \subset B$ or $B \supset A$ - if all elements of $A$ are elements of $B$
  * Each set is a subset of itself: $A \subset A$ (*reflexive* property, shared by equality)
  * Proper subset used if: $A \subset B$ and $A \neq B$
  * If $A \subset B$ and $B \subset C$, then $A \subset C$ (*transitive* property, shared by equality)
  * If $A \subset B$ and $B \subset A$, then $A = B$ (by axiom of extension). It means that set inclusion is *antisymetric* (not hold for equality, which is *symetric*). 
      * Axiom of extension could be reformulated in these terms
      * All proofs of set equality split into parts: first show that $A \subset B$ and then $B \subset A$

## How to build new sets     

### By axiom of specification

Basically, anything intelligent you can assert about set elements, could be used to contruct a new set. The syntax is following:

$$
\{x \in X: x\ has\ blue\ eyes\}
$$

The above `sentence` should have a formal definition. But to make it simpler, we could use a quick one:

* There are 2 basic types of sentences: assertions of equality ($A = B$) and belonging ($x \in X$)
* Other sentences are obtained from basic by repeated applying `usual logical operators` + some grammar to fix unambiguilty. 
    * Usual logical operators are:
      * And: $\land$
      * Or: $\lor$
      * Not: $\lnot$
      * If -- then -- or implies : $\implies$
      * If and only if: $\iff$
      * For some or exists: $\exists$
      * For all: $\forall$
    * Grammar rules are:
      * Put not before sentence and enclose the result between parentheses
      * Put `and` or `or` or `if and only if` between two sentences and enclose the result between parentheses
      * Replace dashes in `if -- then ---` by sentences and enclose the result between parentheses
      * Replace dashes in `for some --` and `for all --` by a letter, follow the result by a sentence, and enclose the whole in parentheses. 
          * $for\ some\ y (x \in X)$ is the same as $x \in X$
      * Note: Parentheses needed for unambiguilty, we can remove them if it's safe for reasoning

To indicate that set $B$ obtained from $A$, we use

$$
B = \{ x \in A: S(x) \}
$$   

### Empty set is already there

$\emptyset$ - empty set

* It's a subset of every set by definition on inclusion.

### By axiom of pairing

It's true that for every two sets we can can have a third one that they both belong to. One consequence of the axiom is that we can have a third one set with nothing more but elements of two sets. For this we apply an axiom of specification with $S(x): x = a\ or\ x = b$.

The usual symbols for such sets is $\{a, b\}$. This set is called pair (*unordered*).


## Axioms

* **Axiom of extension** - Two sets are equal if and only if they have the same elements
* **Axiom of specification** - To every set $A$ and to every condition $S(x)$ there correspondens a set $B$ whose elements are exactly those elements x of $A$ for which $S(x)$ holds
    * Condition here is just a sentence
* **Axiom of pairing** - For any two sets there exists a set that they both belong to.
