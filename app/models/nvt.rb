class Nvt < ApplicationRecord
  has_many :transactions, through: :users
  has_one :user
end
