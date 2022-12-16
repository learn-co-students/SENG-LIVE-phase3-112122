class Donation < ActiveRecord::Base


    # CRUD 

# CREATE 

# .new - going to instantiate a Ruby instance but its not going to share it with the db 
# need to follow up with .save which performs an insertion to the table

donation = Donation.new(date: "121622", amount: 100)
donation.save

# .create - is going to instantiate AND persist the new object
d2 = Donation.create(date: "121622", amount: 500)

# READ: retreive data from the db 

# READ ALL THE RECORDS

# ClassName.all => return a collection/array of all the records in the db 
Donation.all

# READ A SPECIFIC RECORD - we can really use any attribute we want 

# .find(id)
Donation.find(2)

# .find_by(attr: value)
Donation.find_by(amount: 100)
Donation.find_by_amount(100)

# .select 
end 

