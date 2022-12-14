class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :username, presence: true
  validates :email, presence: true
  has_many :nvts
  has_many :transactions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
