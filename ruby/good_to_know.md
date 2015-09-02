# Good To Know's
### a ||= b
  # a == b only when a == false


  a = 0, b = true

  a ||= b #=> a = 0


  a = false, b = true

  a ||= b #=> a = true


  a = nil, b = true

  a ||= b #=> a = true


### Three ways to invoke a method in Ruby:
1. **dot operator** (aka **period operator**)
2. **Object#send**
3. **Object#method(:foo).call**

  Object.object_id

  Object.send(:object_id)

  Object.method(:object_id).call
