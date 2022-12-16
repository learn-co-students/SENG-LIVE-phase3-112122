# To create a migration file we run `rake db:create_migration NAME=file_name`

# a migration is important to us bc it builds out our database structure 

class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    # this is where to tell the story of how we want to change the database
    create_table :donations do |t|
      t.string :date 
      t.integer :amount
    end
  end
end
