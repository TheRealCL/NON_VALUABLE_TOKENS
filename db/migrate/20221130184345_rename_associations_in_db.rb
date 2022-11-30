class RenameAssociationsInDb < ActiveRecord::Migration[7.0]
  def change
    rename_column :nvts, :users_id, :user_id
    rename_column :transactions, :users_id, :user_id
    rename_column :transactions, :nvts_id, :nvt_id
  end
end
