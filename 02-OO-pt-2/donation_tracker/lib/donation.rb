# Agenda:
# - Discuss mass assignment 
# - Discuss class variables and methods
# - Discuss inheritance

require 'pry'
require_relative "./helper_methods.rb"

class Donation < HelperMethods

  # I want to collect all of the instances of this class

  # class variable: it belongs to the class
  # @@all = []

  # class need the class included in the method name 
  # def self.all # self is referring to Donation => Donation.all
  #   @@all
  # end

  # when to use a class method vs instance method: class methods aer good for performing behaviors on the class as a whole. i.e .find method(querying the class) isntance methods are good for performing behaviors on an individual instance i.e. customizing the attribute of an instance
  # class methods are defined with `.` instance methods are defined with `#` Donation#print Donation.all


  # When I create a new isntance, i want to save to @@all
  
  attr_accessor :org, :amount, :date, :donor

  def self.find_by_org(org_name)
    self.all.find {|donation| donation.org == org_name}
    # why not .select => gives us an array 

    # result = nil
    # self.all.each do |donation|
    #   result = donation if donation.org == org_name
    # end
    # self.all.find {|donation| donation.org == org_name}
  end

  # def org=(org)
  #   @org = org
  # end

  # def initialize(org, amount, date, donor = "") 
  #   @org = org
  #   @amount = amount
  #   @date = date
  #   @donor = donor
  # end

  # def initialize(attributes = {}) # default arg/optional argument
  #   attributes.each do |key, value|
  #     self.send("#{key}=", value) # self.org = value 
  #   end

  #   @@all << self
  # end

  # instance method: called on the instance of this class
  def print 
    puts "**************"
    puts self.amount # referring to the instnce the method was called on
    puts self.org 
    puts self.date 
    puts self.donor
    puts "**************"

    # @donor
  end

end


feeding_america = Donation.new(org: 'Feeding America', amount: 100, date: "10/12/22")
ahs = Donation.new(amount: 100, date: "10/12/22", org:'American Humane Society', donor: "Cookie")
binding.pry
# instance variable vs local variable


# I want a method find_by_org that takes in the org name and returns the instance that matches it 

# should this be a class or instance method
# what method(s) should we use inisde the .find_by_org to query and return the instance
