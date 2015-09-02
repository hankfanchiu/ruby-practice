# Good To Know's

According to Ryan Sobol's [15 Questions to Ask During a Ruby Interview]
(https://gist.github.com/ryansobol/5252653) Gist, the following concepts are
generally expected of senior programmers.

### a ||= b

a == b only when a == false

```ruby
a = 0, b = true
a ||= b #=> a = 0
```

```ruby
a = false, b = true
a ||= b #=> a = true
```

```ruby
a = nil, b = true
a ||= b #=> a = true
```

### Three ways to invoke a method in Ruby:

1. **dot operator** (aka **period operator**)
2. **Object#send**
3. **Object#method(:foo).call**

```ruby
Object.object_id
Object.send(:object_id)
Object.method(:object_id).call
```
