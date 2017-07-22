class Location < ApplicationRecord
  has_and_belongs_to_many :events, join_table: "events_locations"
end
