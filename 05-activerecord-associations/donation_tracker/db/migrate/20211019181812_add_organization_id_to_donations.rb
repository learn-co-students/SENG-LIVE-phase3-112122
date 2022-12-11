class AddOrganizationIdToDonations < ActiveRecord::Migration[6.1]
  def change
    add_column :donations, :organization_id, :integer
  end
end
