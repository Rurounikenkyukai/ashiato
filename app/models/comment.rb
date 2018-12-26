class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :event
	validates :comment, presence: true, length: { minimum:2, maximum:201 }
	validates :favorite_artist, presence: true
end
