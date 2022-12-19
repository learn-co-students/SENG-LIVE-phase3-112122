class Donor < ActiveRecord::Base
  has_many :donations
  has_many :organizations, through: :donations
end


# has_many :donations 

# .donations => reader-like method that will return an array of all associated data 

# .donations <<  => setter like method that allows us to add new element to donations collection



# has many through 


# .organizations 

# .organizations << new_org