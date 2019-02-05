class Organization < ApplicationRecord
    has_many :opportunities
    has_many :organizers, foreign_key: 'organization_id', class_name: 'User'

    has_many :member_organizations, foreign_key: 'organization_id', class_name: 'MemberOrganization'
    has_many :members, through: :member_organizations
end
