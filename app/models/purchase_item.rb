class PurchaseItem < ApplicationRecord
	attachment :purchase_cd_image
	belongs_to :purchase_history
	belongs_to :cd
end
