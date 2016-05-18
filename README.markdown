# Ruby Fundamentals Recap

#### Class Definition

* "define a class"

```ruby
class Thing
end
```

#### Creating an instance of a class (instantiating) without arguments

* "create a new instance of Thing"
* "instantiate a Thing"

```ruby
Thing.new
```

#### Creating an instance of a class (instantiating) with arguments

```ruby
Thing.new("something", "else")
```

#### Instance Variables

* "assign instance variables"
* "assign attributes"

```ruby
class Thing
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end
end
```

#### Method definition inside of a class

* "define a method"

```ruby
class ClassName
  def method_name
  end
end
```

#### Calling a method on an instance

* "call the _________ method"
* "call ________"
* "dot _________"

```ruby
thing = Thing.new
thing.method_name
```

#### Return Values

* "what the method returns"
* "the return value of ____________"

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

* "assign a local variable"
* "assign 6 to _________"

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

* "accept a parameter"
* "accept an argument"

```ruby
class Thing
  def method_name(first_name, last_name)
    "#{first_name} #{last_name}"
  end
end
```

#### Calling a method with arguments

* "pass in arguments to _________"

```ruby
thing = Thing.new
thing.method_name("rachel", "warbelow")
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

* "an attr_reader for @something"

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

* "an attr_writer for @something"

```ruby
class Thing
  attr_writer :first_name
end
```

#### Attribute Accessors (reader + writer)

* "an attr_accessor for @something"

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
