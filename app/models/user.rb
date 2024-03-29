class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :chats, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :topics, dependent: :destroy
  enum sex:{
  	男:1,女:2
  }
  enum style:{
  	ロング:1,ファン:2,ショート:3,ボディーボード:4,その他:5
  }
  validates :name, presence: true
  validates :name, length: { in: 1..200 }
  validates :email,  length: { maximum: 80 }
  # validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/,
  #   message: "英文字のみが使えます" }
end
