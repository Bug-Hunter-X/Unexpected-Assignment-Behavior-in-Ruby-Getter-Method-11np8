```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.instance_variable_set(:@value, 20) 
puts my_object.value # Output: 20

# Unexpected behavior
puts my_object.value = 30 # Output: 30, but it modifies the instance variable directly
puts my_object.value # Output: 30
```