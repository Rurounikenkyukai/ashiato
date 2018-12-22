class Cd < ApplicationRecord
	attachment :cd_image
	has_many :discs, inverse_of: :cd
	has_many :purchase_items
	has_many :cart_items
	has_many :recoding_artists
	has_many :artists, through: :recoding_artists
	accepts_nested_attributes_for :discs, allow_destroy: true
	validates :cd_title, presence: true
	validates :cd_genre, presence: true, length: { maximum:15 }
	validates :cd_label, presence: true, length: { maximum:25 }
	validates :cd_price, presence: true
	validates :cd_stock, presence: true
end
