class OpportunitySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :img_url, :location, :date, :paid, :max_attendees
end
