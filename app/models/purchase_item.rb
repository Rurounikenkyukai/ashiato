class PurchaseItem < ApplicationRecord
	belongs_to :purchase_history
	belongs_to :cd
end
