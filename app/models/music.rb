class Music < ApplicationRecord
	belongs_to :disc, inverse_of: :musics
end