class Organization < ActiveRecord::Base
  has_many :donations 
  has_many :donors, through: :donations

end 

# has_many :donations 

# .donations => reader-like method that will return an array of all associated data 

# .donations <<  => setter like method that allows us to add new element to donations collection


# has many through inherits the same methods as has many 


# .donors => would return all the donors this organization is related to through the donations 

# .donors << new_donor => this would just add a new donor to the orgs donors collection