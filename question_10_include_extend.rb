# 10. Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.


#[INCLUDE]:  include will bring all the methods from the module to this class as instance methods
#[EXTEND]:  extend will bring all the methods from the module to this class as Class methods

module HelperMethods
  def greeting(name)
    puts "Hello #{name}"
  end
end

class Car
  attr_accessor :name
  #include will bring all the methods from the module
  #to this class as instance methods
  include HelperMethods
end

class User
  attr_accessor :name
  extend HelperMethods
end

# with the above implementation, i can do the following:
# greeting is an instance method that Car took from the helper method module using "include"
c = Car.new
c.greeting("John")

# greeting is a class method that User took from the helper method module using "extend"
User.greeting("John")

# if i do the opposite for two classes above would not work:
# Car.greeting("John")
#
# or
# u = User.new
# u.greeting("John")
