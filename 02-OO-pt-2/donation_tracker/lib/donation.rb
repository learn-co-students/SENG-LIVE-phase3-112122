require 'pry'

class Donation 
  
  attr_accessor :org, :amt, :date

  def initialize(org, amt, date) 
    @org = org
    @amt = amt
    @date = date
  end

  def print 
    puts "**************"
    puts self.amt
    puts self.org 
    puts self.date 
    puts "**************"
  end

end
