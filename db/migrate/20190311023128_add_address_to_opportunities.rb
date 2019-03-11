class AddAddressToOpportunities < ActiveRecord::Migration[5.2]
  def change
    add_column :opportunities, :address, :string
  end
end
