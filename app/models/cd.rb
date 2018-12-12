class Cd < ApplicationRecord
	attachment :cd_image
	has_many :discs, inverse_of: :cd
	accepts_nested_attributes_for :discs, allow_destroy: true
end
