class PurchaseHistory < ApplicationRecord
	belongs_to :user
	has_many :purchasse_items
	validates :send_address, presence: true
	validates :send_name, presence: true, format: { with: /^[ぁ-んァ-ン一-龥]/, message: "全角ひらがな、全角カタカナ、漢字で入力してください" }
	validates :send_postal_code, presence: true, format: { with: /^\d{7}$/, message: "ハイフンなしの数字7桁で入力してください" }
end
