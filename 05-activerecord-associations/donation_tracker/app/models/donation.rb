class Donation < ActiveRecord::Base
  belongs_to :donor 
  belongs_to :organization 
end 


# this is our join table that joins both donor and organization 


# belongs_to :donor

  # .donor - this is a reader method that returns the donor the donation it belongs to 
  # donation.donor => #<Donor:0x00007fe2c11ce8e0 id: 1, name: "Tor", created_at: 2022-12-19 19:54:04 UTC, updated_at: 2022-12-19 19:54:04 UTC>

  # .donor=(donor) - this is the setter method that allows us to set a donor for the donation
  # donation_1.donor = Donor.create(name: "Tor")

  # donation.build_donor(name: "Scott") => note! this doesnt persist follow up with .save


  # .organization = reader method 
  # .organization=(org) = setter method 




  # client side just submitted a new donation form 
  # donor is the one signed in, current_user 


  # current_user.donations << new_donation_from_form
  # current_user.donations.create(amount: 100, date: 103122, completed: false)