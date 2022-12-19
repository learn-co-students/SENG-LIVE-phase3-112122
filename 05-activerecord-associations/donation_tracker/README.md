# Active Record Associations

### Lecture Take Aways

- Active Record Associations: One to Many
- Has many, belongs to
- Active Record Associations: Many to Many
- Has many, through
- Join models
- Custom instance and class methods 

### Lecture Deliverables

- Create a new class Donor and donors table
- A donor will have a name attribute
- Set up associations between Donor, Donations, and Organization
- Modify the Donations table to reflect the newly defined associations with a foreign key column.

### Association Macros 
- has_many: one to many => one model has many of another model/ parent => child relationship, we get back the related date in array form 

- belongs_to => one to one relationship, is established in what we call the child object 

- has many, through => one to many relationship, but it relies on a join table 
  - middle man for two unrelated tables that then become related through the join table


### Domain modeling 

Donor = parent
- name: string
- email: string 
- has_many :donations 
- has_many :organizations, through: :donations 


Donation = child
- Amount: integer
- Date: string
- Completed: boolean
- belongs_to :donor 
- belongs_to :organization 

Organization
- name: string
- address: text
- has_many :donations 
- has_many :donors, through: :donations 


