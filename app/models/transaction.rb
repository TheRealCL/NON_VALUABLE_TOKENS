class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :nvt
  enum status: {
    pending: 0,
    confirmed: 1,
    rejected: 2
  }
end
