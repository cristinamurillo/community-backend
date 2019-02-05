class CreateMemberOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :member_organizations do |t|
      t.integer :member_id
      t.integer :organization_id

      t.timestamps
    end
  end
end
