require 'pry'

class Donation

  self 


  # what would self return here? class 
  # why? scope matters

  # macros: class methods that oproduce instance methods 
  # attr_reader :date, :amount, :organization
  # attr_writer :date, :organization

  # this gives us both the reader and writer methods 
  attr_accessor :date, :amount, :organization


  # special ruby method that belongs to the class, this gets invoked when the .new method is called on the class
  # We don't need this method, its not required
  # We want to use this method to set rules upon instantiation
  def initialize(amount, date, organization)

    # instance variables: it has a single @
    # differs from local variables because of scope
    @amount = amount 
    @date = date 
    @organization = organization
  end



# instance method: behavior that an instance can receive
  def print_amount
    # @amount
    puts self.amount

    # self refers to the instance that print_amount was being called
    # self is going to return what is receiving the method 
  end

# self can ONLY REFER TO either the class or the instance

# ask ourself what is the scope: am i inside of an instance method? always going ot be the instance, if not, then its the class 


  # getter method/reader method: purpose is to read the attribute of the instance assoiciated with the name 
  
  # def date 
  #   @date 
  # end

  # # setter method / writer method 

  # def date=(date)
  #   @date = date 
  # end



end







# what is an instance?
#  an object created from a class
#  the way we create an instance is through of the .new method

donation = Donation.new(100, 121222, "Feeding America")
ww = Donation.new(300, 122522, "Wounded Warriors")
binding.pry
donation.print_amount


