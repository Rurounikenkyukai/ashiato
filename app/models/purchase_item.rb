class PurchaseItem < ApplicationRecord
	belongs_to :Purchase_history
	belongs_to :cd
end
