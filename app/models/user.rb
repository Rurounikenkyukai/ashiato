class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_paranoid

  attachment :user_image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,:trackable, :validatable

  has_many :asiatos, dependent: :destroy

  has_many :comments, dependent: :destroy

  has_many :cart_items, dependent: :destroy

  has_many :purchase_historys

  has_many :events, through: :asiatos
  has_many :events, through: :comments



  validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "全角ひらがな、全角カタカナ、漢字で入力してください" }
  validates :last_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "全角ひらがな、全角カタカナ、漢字で入力してください" }
  validates :kana_first_name, presence: true, format: { with: /\A[ァ-ンー－]+\z/, message: "全角カタカナで入力してください" }
  validates :kana_last_name, presence: true, format: { with: /\A[ァ-ンー－]+\z/, message: "全角カタカナで入力してください" }
  validates :nick_name, presence: true, length: { maximum:12 }
  validates :email, presence: true
  validates :postal_code, presence: true, format: { with: /\A\d{7}\z/, message: "ハイフンなしの数字7桁で入力してください" }
  validates :address, presence: true
  validates :phone_number, presence: true, format: { with: /\A\d{10}\zA|\A\d{11}\z/, message: "ハイフンなしの11桁で入力してください" }

end
