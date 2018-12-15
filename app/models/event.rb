class Event < ApplicationRecord
	attachment :event_image
	has_many :performers, dependent: :destroy, inverse_of: :event
	has_many :artists, through: :performers
	accepts_nested_attributes_for :performers, allow_destroy: true
	has_many :comments
	has_many :asiatos
	validates :event_title, presence: true
	validates :event_day, presence: true
	validates :event_city, presence: true
	validates :event_address, presence: true
end
