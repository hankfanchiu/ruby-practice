# Good To Know's

## a ||= b
a == b only when a == false

  > ex: a = 0, b = true
  > a ||= b #=> a = 0

  > ex: a = false, b = true
  > a ||= b #=> a = true

  > ex: a = nil, b = true
  > a ||= b #=> a = true


## Three ways to invoke a method in Ruby:
1. dot operator (aka period operator)

  > ex: Object.object_id

2. Object#send

  > ex: Object.send(:object_id)

3. Object#method(:foo).call

  > ex: Object.method(:object_id).call


