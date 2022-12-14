require_relative './helper_methods.rb'
require 'pry'

class User < HelperMethods

  attr_accessor :name

  def another_method 
    Donation.all
  end

end


binding.pry

