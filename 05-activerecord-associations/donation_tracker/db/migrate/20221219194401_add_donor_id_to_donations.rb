class AddDonorIdToDonations < ActiveRecord::Migration[6.1]
  def change
    add_column :donations, :donor_id, :integer
  end
end
