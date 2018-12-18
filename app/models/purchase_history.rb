class PurchaseHistory < ApplicationRecord
	belongs_to :user
	has_many :purchase_items
	accepts_nested_attributes_for :purchase_items, allow_destroy: true
	validates :send_address, presence: true
	validates :send_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "全角ひらがな、全角カタカナ、漢字で入力してください" }
	validates :send_postal_code, presence: true, format: { with: /\A\d{7}\z/, message: "ハイフンなしの数字7桁で入力してください" }
end
