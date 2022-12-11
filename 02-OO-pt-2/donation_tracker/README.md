## 2. OO Ruby pt2
### SWBAT

- [ ] Observe how to build class methods
- [ ] Explain the difference between a class method and instance method
- [ ] Explain self
- [ ] Explain what private methods are
- [ ] Explain inheritance in OO
- [ ] Observe inheritance in OO

#### Class Variables

- Syntax: double @ signs
- Belongs to the class itself

```ruby
@@all = []
```

#### Class Methods

- Syntax: Method that is called upon the class itself. 

```ruby
Classname.method_name
```

#### Remembering Objects

- To save new instances of a class:

1. Create a class variable set to an empty array
2. Upon creation, add new instance to to array

```ruby
@@all = []

def initialize(parameters)
    ...
    @@all << self
end
```

#### Keyword arguments

- When using the initialize method, it is really important to maintain the order in which the arguments are defined.
- Using keyword arguments, order does not matter.
- Will also be beneficial for utilizing mass assignment

```ruby
def initialize(parameter1:, parameter2:)
    @attribute1 = parameter1
    @attribute2 = parameter2
end
```

#### Mass Assignment

- The following code takes in a hash, iterates over it and uses the `.send` method to set attributes on the new instance.

```ruby
def initialize(attributes)
    attributes.each do |key, value|
        self.send("#{key}=", value)
    end
end
```

#### Private Methods

- Methods that are private to a class, can not be called upon in another class
- Use keyword `private`
