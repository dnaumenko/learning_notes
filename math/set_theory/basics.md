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

* It's a subset of every set by definition on inclusion
    * Easy to prove by contradiction 

### Create sets by axiom of pairing

It's true that for every two sets we can can have a third one that they both belong to. One consequence of the axiom is that we can have a third one set with nothing more but elements of two sets. For this we apply an axiom of specification with $S(x): x = a\ or\ x = b$.

The usual symbols for such sets is $\{a, b\}$. This set is called pair (*unordered*).

## Unions

You can create new sets by applying an axiom of union. 

The syntax (not-used very often):

$$
\bigcup\ \{X: X \in C\}
$$

For pairs there is a special syntax:

$$
A \cup B = \bigcup \ \{X: X \in \{A, B\} \}
$$

Some easy to proof facts about unions of pairs:

* $A \cup \emptyset = A$
* $A \cup B = B \cup A$ (commutativity)
* $A \cup (B \cup C) = (A \cup B) \cup C$ (transitivity)
* $A \cup A = A$ (idempotence)
* $A \subset B \iff A \cup B = B$

Unions helps us to generalize pairs. So we can have $\{a, b ,c\} = {a} \cup {b} \cup {c}$, and so on.

## Intersection

Similar to unions, we could intersection as a set defined by:

$$
A \cap B = \{ x \in A: x \in B\}
$$

Basic facts are similar to unions:
* $A \cap \emptyset = A$
* $A \cap B = B \cap A$
* $A \cap (B \cap C) = (A \cap B) \cap C$
* $A \cap A = A$
* $A \subset B \iff A \cap B = A$

Sets with empty intersection so frequent so they have a special name - disjoint. If collection of set is disjoint, so any 2 sets in this collections is disjoint. Alternativly, we can call such collection *pairwise disjoint* collection.

## Union and intersection laws (distributive laws)

$$
A \cap (B \cup C) = (A \cap B) \cup (A \cap C)
\newline
A \cup (B \cap C) = (A \cup B) \cap (A \cup C)
$$

Proofs are easy: you start by observing possibilities of X being either in left or right part of right or left expression, then use logic behind 'and/or' to prove that the equivalance works in both directions.

## Complements

The difference between set $A$ and set $B$ called the `relative complement` of B in A.

Syntax:

$$
A - B = \{ x \in A: x \notin B\}
$$

It's not necessary that B is subset A ($B \subset A$). 

Absolute complement of set $A$ is defined as $A^{'}$. 

If we assume that this one set E witch is a set containing sets A, we could define some basic laws:

* $(A^{'})^{'}=A$
* $\emptyset^{'}=E$
* $E^{'}=\emptyset$
* $A \cap A^{'}=\emptyset$
* $A \cup A^{'}=E$
* $A \subset B \iff B^{'} \subset A^{'}$

### De Morgan laws about complements

$$
(A \cup B)^{'}=A^{'} \cap B^{'}
\newline
(A \cap B)^{'}=A^{'} \cup B^{'}
$$

This law means that theorems about sets come in pairs. So we can just replace A's by compelements, interchange unions and intersections and the result is an another theorem. This fact sometimes called a principal of duality. 

## Symmetric difference (Boolean sum)

It's defiend as:

$$
A + B = (A - B) \cup (B -A)
$$

Operation is commutative and associative, and is such that $A + \emptyset = A$ and $A + A = \emptyset$.

## Order

The order in set comes from a simple trick to have a set $\mathcal{C}$ which contains other sets. For example, it could be $\{\{a\}, \{a,b\}\}$ or $\{\{b\}, \{a,b\}\}$. To reconstruct an order we take at first a set that contains in all other sets, then remove it from sets (it would come first) and repeat the process. In our example, the order will be $(a, b)$ and $(b, a)$.

So the *orderred pair* of $a$ and $b$, with first cooridante $a$ and second coordinate $b$, is the set $(a, b)$ defined by:

$$
(a,b) = \{\{a\}, \{a,b\}\}
$$

The defition of the _Cartesian_ product is a set of all ordered pairs (x, y) with x in X and y in Y.

## Relation

Relation could be formulated in terms of pairs in such way that if there is a relation between $a$ and $b$, we assume that there is an ordered pair $(a, b)$. So in Set Theory (even if we don't really know what does the relationship means) we define it as a set of ordered pairs. 

In math notation, a set $R$ is a relation/relationship if each element of R is an ordered pair (i.e. if $z \in R$, then there exists $x$ and $y$ so that $z = (x, y)$).

Sometimes it convinient to write: $x R y$.

Empty set is a relation. To proof, try to find element in $\emptyset$ which is not an ordered pair :).

As we have an ordered pair in relations, so we can project either first element of it or second. There are special names for them:

$$
dom R = \{x: for some y \in R\}\newline
ran R = \{y: for some y \in R\}
$$

dom stands for `domain`, ran stands for `range`.

## Functions

If we have ordered pairs as relations, we can define functions to be such relation that for them domain is one set, and for each element from domain set there exists an unique value. 

In notation, $(x, y) \in f$ means function, if from $(x, z) \in f$ and $(x, y) \in f$, follows that $y = z$ (uniqeness condition re-formulated). 

Functions are so popular, so there is a special syntax for them: $f(x) = y$. It's more popular than $(x, y) \in f$ and $x f y$. The element y called value, x called argument. Also, we can refer to function as mapping, transformation, correspondence or operator.

Usual abbreviation is: $f: x \rightarrow y$.

It's not required that range of function from $X$ to $Y$ was equal to $Y$. It should just map every x uniqually to some element of $Y$. 

The set of all functions from $X$ to $Y$ denoted by $Y^X$ (it's a subset of power set $\mathcal{P}(X \times Y)$).

Note that some mathematicians can say $f$ maps $X$ $onto$ $Y$ if range of this funciton equal to $Y$. We can consider a subset of $X$ and call it an image of function (it's a set of elements y of X for which there is exist an x in X). The notation for image is $f(A)$ (you can mistakenly think of it as a function of one value $A$).

The _inclusion map_ (or the _embedding_, or the _injection_) if $f(x) = x$ for each x in $X$ ($X$ should be a subset of $Y$ for this relation). Another name is the _identity map_ of X.

The function $g$ called a _restriction_ of $f$ to $X$ if it maps some subset of $X$ in the same way a $f(x)$. I.e. $g(x)$ is equal to $f(x)$ for some subset X. The $f$ called an _extension_ of $g$ to $Y$. Tradional notation for extension is $g = f|X$.

Inverse functions (if we simplify, it would be a function with domain and range swapped) are written like this: 

$$
f^{-1}(B)
$$

Function composition means that we can do something in one step and it's written usually as:

$$
g(f(x))\newline
g \circ f\newline
gf
$$

## Families

If we interested in range of functions more, there exists a special notation for them and it overall similar to sets as we know them by now (e.g. you can have an union/intersection). Family sets is usually used in generalization of a notion of the _Cartesian_ product.


## Axioms

* **Axiom of extension** - Two sets are equal if and only if they have the same elements
* **Axiom of specification** - To every set $A$ and to every condition $S(x)$ there correspondens a set $B$ whose elements are exactly those elements x of $A$ for which $S(x)$ holds
    * Condition here is just a sentence
* **Axiom of pairing** - For any two sets there exists a set that they both belong to
* **Axiom of union** - For any collection of sets there exists a new set with all elements belonging to at least one set of the given collection
* **Axiom of powers** - For each set there exists a collection of sets that contains among its elements all subset of the given set.
    * We call such sets a power set. A special syntax for power set for  is $\mathcal{P}(X)$
    * We can illistruate some power sets:
        * For singletons: $\mathcal{P}(\{a\})=\{ \emptyset, \{a\}\}$
        * For pairs: $\mathcal{P}(\{a, b\})=\{ \emptyset, \{a\}, \{b\}, \{a, b\}\}$
        * For triple, it will have 8 elements, and so on.
    * The occurence of n as an exponenets has something to do with the reason why such sets called a power set.