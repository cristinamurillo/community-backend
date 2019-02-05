class CreateOpportunities < ActiveRecord::Migration[5.2]
  def change
    create_table :opportunities do |t|
      t.string :title
      t.string :description
      t.string :img_url
      t.string :location
      t.datetime :date
      t.boolean :paid
      t.integer :max_attendees 
      t.references :organization

      t.timestamps
    end
  end
end
