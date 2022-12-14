# Agenda:
# - Discuss mass assignment 
# - Discuss class variables and class methods
# - Discuss inheritance

require 'pry'

class Donation


  # creating this class variable bc i want to store all of the instances created from this class 
  @@all = []
  
  # class method are beaviors that belong to the class as a whole i.e we want to search the class and its instances for a specific condition
  # behave as a reader method for my class variable
  def self.all # self is Donation class
    @@all
  end
  
  attr_accessor :organization, :amount, :date

  # def initialize(organization, amount, date) 
  #   @organization = organization
  #   @amount = amount
  #   @date = date
  # end

  def initialize(attr = {}) # default argument
    attr.each do |key, value|
      self.send("#{key}=", value) # self.amount = 100
    end
    # add the new instance to @@all 
    @@all << self
  end

  # I need to know which order my props are passed into initialize 

  def print 
    puts "**************"
    puts self.amount
    puts self.organization 
    puts self.date 
    puts "**************"
  end

end



# our keys need to match exactly what we passed into attr_accessor 
binding.pry
donation = Donation.new(amount: 100, date: 121222, organization: "Feeding America")
ww = Donation.new(amount: 300, date: 122522, organization: "Wounded Warriors")
