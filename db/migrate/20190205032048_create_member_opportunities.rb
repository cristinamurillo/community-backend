class CreateMemberOpportunities < ActiveRecord::Migration[5.2]
  def change
    create_table :member_opportunities do |t|
      t.integer :member_id 
      t.integer :opportunity_id
      
      t.timestamps
    end
  end
end
