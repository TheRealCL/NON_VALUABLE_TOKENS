class AddDefaultValueToStatusInTransactions < ActiveRecord::Migration[7.0]
  def change
    execute "UPDATE transactions SET status = 0;"
    change_column :transactions, :status, :integer, null: false, default: 0
  end
end
