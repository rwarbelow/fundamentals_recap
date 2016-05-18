# Ruby Fundamentals Recap

#### Class Definition

```ruby
class Thing
end
```

#### Creating an instance of a class (instantiating) without arguments

```ruby
Thing.new
```

#### Creating an instance of a class (instantiating) with arguments

```ruby
Thing.new("something", "else")
```

#### Instance Variables

```ruby
class Thing
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end
end
```

#### Method definition inside of a class

```ruby
class ClassName
  def method_name
  end
end
```

#### Calling a method on an instance

```ruby
thing = Thing.new
thing.method_name
```

#### Return Values

```ruby
class Thing
  def method_name
    "some string" # this is the return value
  end

  def method_name
    "stuff"
    5 + 5
    8 / 2 # this line is the return value
  end
end
```

#### Local Variable

```ruby
class Thing
  def method_name
    my_first_variable = 6
    my_second_variable = 100
    my_first_variable + my_second_variable
  end
end
```

#### Parameter

```ruby
class Thing
  def method_name(first_name, last_name)
    "#{first_name} #{last_name}"
  end
end
```

#### Calling a method with arguments

```ruby
thing = Thing.new
thing.method_name("rachel", "warbelow")
```

#### Instance Variables

```ruby
class Thing
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end
end
```

#### Getter Methods

```ruby
class Thing
  def first_name
    @first_name
  end
end
```

#### Attribute Readers

```ruby
class Thing
  attr_reader :first_name
end
```

#### Setter Methods

```ruby
class Thing
  def first_name=(new_name)
    @first_name = new_name
  end
end
```

#### Attribute Writers

```ruby
class Thing
  attr_writer :first_name
end
```

#### Attribute Accessors (reader + writer)

```ruby
class Thing
  attr_accessor :first_name
end
```

#### Conditional Statement

```ruby
class Thing
  def method_name
    if something_true?
      "YAY"
    else
      ":("
    end
  end
end
```
