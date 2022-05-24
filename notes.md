What is the "not equal" operator?
`a /= b`

What are the `and` and `or` operators?
`&&` and `||`

How do we express a character?
With single quotes, like `c`.

Write a conditional statement that returns `0` if `True` and `1` if `False`.
`if 100 > 99 then 0 else 1`

How could we divide `10` by `3` and get the remainder? What is another way to right it?

```haskell
rem 10 3   -- prefix notation
10 `rem` 3 -- infix notation
```

What does `let a = 10 in let b = a * a in a + b` evaluate to?
`110`

What does the keyword `it` refer to in GHCI?
The most recently evaluated expression.

An expression always has the same type as \_\_ \_\_ \_\_ \_\_ \_\_ \_\_.
the value it will evaluate to

What will `:t 50` return? How should we read this?
`Num a => a`
If `a` is one of the types of number, then 50 can have type `a`.

Why doesn't `:t 50` simply return like `Number` or something?
Because `Num` is a typeclass, which represents a collection of types.

How can we type multiline expressions in GHCI?
Start with `:{` on a line and end with `:}`.

If we want to create a `gcd` function, what can we name it given that there is already a built-in function of that name?
`gcd'`

A type represents \_\_ \_\_ \_\_ \_\_.
a collection of values

Rewrite this function using pattern matching:

```haskell
factorial :: (Eq p, Num p) => p -> p
factorial n =
  if n == 1 then 1 else n * factorial (n - 1)
```

```haskell
factorial :: (Eq p, Num p) => p -> p
factorial 1 = 1
factorial n = n * factorial (n - 1)
```

What special character in a pattern matching expression matches anything?
`_`, as in `isVowel _ = False`.

Rewrite the following function using pattern matching with guarded equations:

```haskell
sign :: (Ord a, Num a, Num b) => a -> b
sign x =
  if x < 0 then -1 else if x > 0 then 1 else 0
```

```haskell
sign :: (Ord a, Num a, Num b) => a -> b
sign x
  | x < 0 = 1
  | x > 0 = 1
  | otherwise = 0
```

What is a list in Haskell?
A collection of ordered elements of the same type.

What does the type `Num a => [a]` mean?
A list of elements where each element is of type `Num a => a`.

What is the head and tail of the list `[1, 2, 3]`? What about `[4]`?
`1` and `[2, 3]`
`5` and `[]`

What operator could we use to add an element to the front of a list?
The cons operator `:`, like in `False : [True, False] -- = [False, True, False]`.

What operator could we use to combine two lists together?
The append or concatenante operator `++`.

Write a function called `isNil` that takes a list and returns True if it is empty.

```haskell
isNil :: [a] -> Bool
isNil [] = True
isNil _ = False
```

In the following function `length'`, what do `x` and `xs` represent? How is the cons `:` operator being used?

```haskell
length' :: Num b => [a] -> b
length' (x:xs) = 1 + length' xs
```

`x` is the head and `xs` is the tail.
The cons operator `:` is being used to deconstruct rather than construct the list.

What is the real type of `String`?
`[Char]`, which is just a list of characters.
