# Essentials

## Basics

### What is a class?

A class is a **blueprint** that holds **data**,
has **methods** that interact with that data,
and are used to **instantiate (initialize) objects**.

### What is an object?

An object is the root class in Ruby and an **instance of a class**.

### What is a module?

A module serves as the mechanism for namespaces.

A module _cannot_ be instantiated (initialized) like classes can.

A module provides the mechanism for multiple inheritance via mix-ins.

### Self:

Self always refers to the current object.

* At the class level, self is the class.
* At the instance level, self is the instance in context.

### Method access control:

* Public methods enforce no access control.
* Protected methods are only accessible to other objects of the same class.
* Private methods are only accessible within the context of the current object.

### Operator precedence:

The `and` and `or` operators have _lower_ precedence than the `=` operator.

The `&&` and `||` operators have _higher_ precedence than the `=` operator.

```ruby
val1 = true and false   # results in val1 being equal to true
val2 = true && false    # results in val2 being equal to false
```

### ==, ===, eql?, and equal?:
`==` checks if the value of two operands are equal.

`===` is used specifically to test equality within the `when` clause of `case`.

`eql?` checks if the value and the type of two operands are the same.

```ruby
1 == 1.0 #=> true
1.eql?(1.) #=> false
```

`equal?` compares the identity (object ID) of two objects.

### false:

In Ruby, the only values that evaluate to false are `false` and `nil`.

Everything else evaluates to true.

