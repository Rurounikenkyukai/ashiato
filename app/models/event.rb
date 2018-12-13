class Event < ApplicationRecord
	attachment :event_image
	has_many :performers
	has_many :comments
	has_many :asiatos

  has_many :users, through: :asiatos
  has_many :users, through: :comments

	validates :event_title, presence: true
	validates :event_day, presence: true
	validates :event_city, presence: true
	validates :event_address, presence: true

	def favorited_by?(user)
	  asiatos.where(user_id: user.id).exists?
	end
end
