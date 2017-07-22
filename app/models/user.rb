class User < ApplicationRecord

  self.inheritance_column = :kind

  def self.types
    %w(Attendee Speaker Organizer)
  end

  scope :attendees, -> { where(type: 'Attendee')}
  scope :organizers, -> { where(type: 'Organizer')}
  scope :speakers, -> { where(type: 'Speaker')}
end
