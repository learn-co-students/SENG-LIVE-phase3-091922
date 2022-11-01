require 'pry'

class Donation 

  self # this returns the class Donation

  # a macro: class method that returns instance methods 
    # attr_reader :org, :date # gives getter methods
    # attr_writer :org, :date # setter methods

    # gives us both reader and writer methods for whats passed in
    attr_accessor :org, :date, :amount, :donor

  # data 

  # initialize is a method that will get invoked after .new gets invoked
  # this method is a set of rules that we want applied on the creation of an instance
  # we do not need to explicitly invoke this method, it will get invoked when .new gets called

  # def initialize(value)
  #   @instance_variable = value
  # end

  def initialize(amt, donor, date, organization, comment="") # default argument and its benefit is giving us the optional argument
    # @amount = amt 
    @donor = donor 
    @date = date 
    @org = organization 
    @comment = comment

    self.amount = amt # invoking the setter method
  end 

  # Why instance variables? bc they get attached to the instance they have been defined for

  # behaviors 

  # instance method: 
  def print 
    puts @amount
  end

  def add_comment(comment)
    binding.pry
    @comment = comment 
  end


  # # getter/reader 
  # def amount 
  #   # self is returning the instance the method is called on
  #   @amount
  # end

  # # setter/ writer

  # def amount=(amt)
  #   @amount = amt
  # end

end

# self is going to refer to 2 things always: either the instance, or the class > inside of instance methods; self is always the instance, inside of the scope of the class or class methods, self is always teh class


# I can now create instances of this Donation 
# Object: Instance, key/value pairs, properties and methods(behavior)
# Class is a template for each object 

# .new to create a new instance of the Donation class => factory object 


# what is the difference between instance variables vs local variables 
# scope: local can only be accessed inside of the method its defined, instance variables can be called in other instance methods

# instance method? it is a method that is called on the instance (behaviors that belong to each instance)

fa = Donation.new(100, "Taylan", "103122", "Feeding America")
aca = Donation.new(500, "Ryan", "110122", "American Canine Society")
aca.add_comment("this is aca")
fa.add_comment("wow")
# binding.pry
fa.print
# fa.initialize
Donation.new(5000, "Vera", "110122", "American Heart Society")




# {
#   amount: 100,
#   org: "Feeding America"
# }
# {
#   amount: 500,
#   org: "ACA"
# }


# self is the receiver of a method
# in ruby we have 2 types of receivers: class/instance
# inside of the method being called, the receiver is self 