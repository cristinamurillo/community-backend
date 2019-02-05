class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :description
      t.string :icon_url
      
      t.timestamps
    end
  end
end
