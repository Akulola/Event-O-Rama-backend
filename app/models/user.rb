class User < ActiveRecord::Base
    has_many :events
    has_many :attendees
    has_many :attended_events, through: :attendees, source: :events
end