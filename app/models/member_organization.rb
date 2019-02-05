class MemberOrganization < ApplicationRecord
    belongs_to :member, foreign_key: 'member_id', class_name: 'User'
    belongs_to :organization 
end
