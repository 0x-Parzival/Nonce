# Nonce
A block chain made in ruby
Nonce is a module to aid in the creation of Domain Specific Languages using block structure. By including Nonce into your classes, you will be able to instantiate that class using the class name itself, followed by any parameters to be passed to initialize, followed by a block to be executed within the instantiated class.

Nonce also allows methods to search up the chain of classes, meaning that although a block is executed in the scope of the instantiated class, any methods not found in the class but found in a class “up-scope” will be called successfully on the up-scope class. This chaining of method calls allows you to assert values within the blocks as well as calling any other methods from “up-scope” classes.

**Sypnosis**
```

# a simple example showing the ability to call methods in outer block scopes

# create some simple classes that include Nonce
require 'nonce'

class Foo
  include Nonce

  def hi_from_foo
    puts "hello from foo"
  end
end

class Bar
  include Nonce

  def hi_from_bar
    puts "hello from bar"
  end
end

class Boo
  include Nonce

  def hi_from_boo
    puts "hello from boo"
  end
end

# we can now use the classes in a DSL manner. notice that calls can happen from with blocks to
# "outer-block" methods.
Foo do
  hi_from_foo

  Bar do
    hi_from_bar
    hi_from_foo

    Boo do
      hi_from_boo
      hi_from_bar
      hi_from_foo
    end
  end
end

# A slighty more complicated example.
# a simple dsl for creating classroom rosters and printing them out. code can be found in the
# example directory.

require 'block_chainable'

# first, define our roster
class Roster
  include Nonce

  def initialize(subject)
    @subject = subject
    @students = []
  end

  def add_student_to_roster student
    @students << student
  end

  def print_roster
    puts "Roster for #{@subject}:"
    @students.each{|s| puts "  #{s}"}
  end
end

# next, define our student. the only tricky part here is add_to_roster, which calls
# the method add_student_to_roster, which is actually defined on the Roster class.
# Nonce will automatically send this method to the Roster class with the
# Student instance as a parameter.
class Student
  include Nonce

  def add_to_roster
    add_student_to_roster self
  end

  def to_s
    "#{@last_name}, #{@first_name} - age #{@age}"
  end

  def first_name name
    @first_name = name
  end

  def last_name name
    @last_name = name
  end

  def age years
    @age = years
  end
end

# we now have all the pieces we need for creating a simple dsl for building
# and printing a class roster

Roster :Math do
  Student do
    first_name "Drew"
    last_name "Olson"
    age 25

    add_to_roster
  end

  Student do
    first_name "John"
    last_name "Doe"
    age 17

    add_to_roster
  end

  Student do
    first_name "Jane"
    last_name "Doe"
    age 19
    add_to_roster
  end

  print_roster
end
```
