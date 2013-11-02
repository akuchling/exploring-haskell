
==============================
Notes: Learning Haskell
==============================

Chapter 1
---------

In ghci::

  :l foo -- loads contents of foo.hs (into current namespace)?
  :r     -- reloads current script (not clear what that means)
  :set prompt "ghci>"  -- sets the prompt


Math operators::

  standard +, -, *, /, ^ or ** for exponentiation
  oddity: 5 * -3 -> parsing error; use 5*(-3) instead.
  div 92 10   -- floor division; also 92 `div` 10

Booleans::

  True, False
  a && b  -- AND
  a || b  -- OR

Equality testing::

  a == b
  a /= b   -- not equal to

Functions::

  succ x   -- successor of x
  pred x   -- predecessor of x
  min a b  -- minimum
  max a b  -- maximum


Lists:

  [elem1,elem2, ...]
  "abc" is sugar for ['a', 'b', 'c']
  list1 ++ list2  -- concat
  elem : list     -- cons
  list !! 5       -- return 5th element
  list1 == list2  -- compared element by element, lexicographically
  head list       -- 1st element
  tail list       -- car of list
  last list       -- last element
  init list       -- returns all but last element
  length list     -- returns int length
  null list       -- true if empty
  reverse list    -- reverses list
  take x list     -- first x elements
  drop x list     -- elements after first x elements
  maximum list
  minimum list
  sum list
  product list
  el `elem` list  -- true if el is in the list

List comps::

  [ expr | e1 <- list1, e2 <- list2, condition, condition]

Tuples:

  (1,2,3,"abc")
  fst (a,b) == a
  snd (a,b) == b
  zip lst1 lst2 = (e11, e21), (e12, e22), ...

Importing::

  import modname  -- adds all names to global
  import modname (name1, name2) -- import only specific names
  import modname hiding (name1) -- exclude a name
  import qualified modname -- require modname. prefix
  import qualified modname as newname -- rename on import


Links
===========

* http://www.haskell.org/haskellwiki/Blog_articles/Exercises:
  A collection of exercises and interesting examples to try to implement.

* http://www.scs.stanford.edu/11au-cs240h/notes/ghc-slides.html:
  Slides explaining how a Haskell compiler is implemented.
