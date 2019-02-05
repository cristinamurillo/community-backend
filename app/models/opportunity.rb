class Opportunity < ApplicationRecord
    has_many :member_opportunities, foreign_key: 'opportunity_id', class_name: 'MemberOpportunity'
    has_many :members, through: :member_opportunities

    belongs_to :organization
end
