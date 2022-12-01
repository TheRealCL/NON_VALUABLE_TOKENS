class Nvt < ApplicationRecord
  has_many :transactions, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
end
