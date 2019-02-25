class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :icon_url
end
