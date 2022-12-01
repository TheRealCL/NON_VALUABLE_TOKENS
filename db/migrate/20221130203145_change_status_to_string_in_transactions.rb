class ChangeStatusToStringInTransactions < ActiveRecord::Migration[7.0]
  def change
    change_column :transactions, :status, :string
  end
end
