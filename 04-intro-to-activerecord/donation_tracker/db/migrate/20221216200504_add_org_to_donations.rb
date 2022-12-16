class AddOrgToDonations < ActiveRecord::Migration[6.1]
  def change
    add_column :donations, :org, :string
  end
end
