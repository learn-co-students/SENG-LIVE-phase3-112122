class Donation < ActiveRecord::Base


#     # CRUD 

# # CREATE 

# # .new - going to instantiate a Ruby instance but its not going to share it with the db 
# # need to follow up with .save which performs an insertion to the table

# donation = Donation.new(date: "121622", amount: 100)
# donation.save

# # .create - is going to instantiate AND persist the new object
# d2 = Donation.create(date: "121622", amount: 500)

# # READ: retreive data from the db 

# # READ ALL THE RECORDS

# # ClassName.all => return a collection/array of all the records in the db 
# Donation.all

# # READ A SPECIFIC RECORD - we can really use any attribute we want 

# # .find(id)
# Donation.find(2)

# # .find_by(attr: value)
# Donation.find_by(amount: 100)
# Donation.find_by_amount(100)

# # .select 


# # THESE ARE NOT THE ONLY QUERY METHODS ACTIVE RECORD GIVES US


# # UPDATE A RECORD IN THE DB 

# # .update(attr: new_value) - will actually modify the value for the field and persist 

# # we first need to find the record we want to update and then update the field 
# donation = Donation.find(9)
# donation.update(org: "Feeding America")


# # DESTROY a record or even multiple records

# # .destroy 
# # first find the record, then call .destroy on it 
# donation = Donation.find(9)
# donation.destroy

# # destroy all records 

# # .destroy_all
# Donation.destroy_all

def self.sum_all_amounts 
    self.sum(:amount)
end 

end 

