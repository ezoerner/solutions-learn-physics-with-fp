# Chapter 3: Types and Entities
## Exercise 3.1.
*Add parentheses to the following expressions to indicate the order in which Haskell’s precedence and associativity rules (Table 1-2) would evaluate the expressions. Some of the expressions are well-formed and have a clear type. In those cases, give the type of the (entire) expression. Also identify expressions that are not correctly formed (and consequently do not have a clear type) and say what is wrong with them.*
1. False || True && False || True
2. 2 / 3 / 4 == 4 / 3 / 2
3. 7 - 5 / 4 > 6 || 2 ^ 5 - 1 == 31
4. 2 < 3 < 4
5. 2 < 3 && 3 < 4
6. 2 && 3 < 4
---
1. `(False || (True && False)) || True` **`:: Bool`**
2. `((2 / 3) / 4) == ((4 / 3) /2)` **`:: Bool`**
3. `((7 - (5 / 4)) > 6) || (((2 ^ 5) - 1) == 31)` **`:: Bool`**
4. *Not well formed: cannot operate on Bool with comparison operators*
5. `(2 < 3) || (3 < 4)` **`:: Bool`**
6. *Not well formed: cannot operate on numeric types with logical && operator*

## Exercise 3.2 - 3.6.
See Chapter03.hs

## Exercise 3.7
*What is the type of the expression `bagFee False` using the definition of bagFee you wrote in Exercise 3.4?*

**Int**

*What is the value of the expression `bagFee False` using that definition of bagFee?*

**0**

## Exercise 3.8
See Chapter03.hs
## Exercise 3.9
*There are only a finite number of functions with type `Bool -> Bool`. How many are there? What would be good names for them? How many functions have type `Bool -> Bool -> Bool`?*

**There 2 `Bool -> Bool` functions:\
`identity` and `not`**

**There are 16 `Bool -> Bool -> Bool` functions. [^1]**

[^1]: Given two operands, each with two possible values, there are 2² = 4 possible combinations of inputs. Because each output can have two possible values, there are a total of 2⁴ = 16 possible binary Boolean operations. Source: [Boolean Algebra](https://en.wikipedia.org/wiki/Boolean_algebra)

## Exercise 3.10
*Devise an expression using `True`, `False`, `&&`, and `||` that would come out differently if the precedence of `||` was higher than the precedence of `&&`.*

**True || False && False**