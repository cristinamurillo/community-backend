class User < ApplicationRecord
    has_many :member_opportunities, foreign_key: 'member_id', class_name: 'MemberOpportunity'
    has_many :opportunities, through: :member_opportunities, source: :opportunity

    has_many :member_organizations, foreign_key: 'member_id', class_name: 'MemberOrganization'
    has_many :organizations, through: :member_organizations, source: :organization
   
    belongs_to :organization, optional: true  
end
