class Event < ApplicationRecord
	attachment :event_image
	has_many :performers, dependent: :destroy, inverse_of: :event
	has_many :artists, through: :performers
	accepts_nested_attributes_for :performers, allow_destroy: true
	has_many :comments, dependent: :destroy
	has_many :asiatos, dependent: :destroy

  has_many :users, through: :asiatos
  has_many :users, through: :comments

	geocoded_by :event_address
  before_validation :geocode


	validates :event_title, presence: true
	validates :event_day, presence: true
	validates :event_city, presence: true
	validates :event_address, presence: true

	def favorited_by?(id)
	    asiatos.where(user_id: id).exists?
	end
end
