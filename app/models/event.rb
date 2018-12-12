class Event < ApplicationRecord
	attachment :event_image
	has_many :performers
	has_many :comments
	has_many :asiatos
	validates :event_title, presence: true
	validates :event_day, presence: true
	validates :event_city, presence: true
	validates :event_address, presence: true
end
