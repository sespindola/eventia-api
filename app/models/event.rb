class Event < ApplicationRecord
  has_and_belongs_to_many :locations, join_table: "events_locations"
  has_and_belongs_to_many :users, join_table: "events_users"
  has_and_belongs_to_many :attendees, join_table: "events_users",
    association_foreign_key: "user_id"
  has_and_belongs_to_many :organizers, join_table: "events_users",
    association_foreign_key: "user_id"
  has_and_belongs_to_many :presenters, join_table: "events_users",
    association_foreign_key: "user_id"
end
