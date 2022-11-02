# Agenda:
# - Discuss mass assignment 
# - Complete Donation#print
# - Discuss class variables and methods
# - Discuss inheritance

require 'pry'

class Donation 
  
  attr_accessor :org, :amount, :date, :donor

  def initialize(org, amount, date, donor) 
    @org = org
    @amount = amount
    @date = date
    @donor = donor
  end

  def print 
    puts "**************"
    puts self.amount
    puts self.org 
    puts self.date 
    puts "**************"
  end

end


feeding_america = Donation.new('Feeding America', 100, "10/12/22", "Aysan")
ahs = Donation.new(100, "10/12/22", 'American Humane Society', "Cookie")
