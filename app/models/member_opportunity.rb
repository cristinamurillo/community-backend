class MemberOpportunity < ApplicationRecord
    belongs_to :member, foreign_key: 'member_id', class_name: 'User' 
    belongs_to :opportunity 

end
