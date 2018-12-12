class Disc < ApplicationRecord
	belongs_to :cd, inverse_of: :discs
	has_many :musics, inverse_of: :disc
	accepts_nested_attributes_for :musics, allow_destroy: true
end
