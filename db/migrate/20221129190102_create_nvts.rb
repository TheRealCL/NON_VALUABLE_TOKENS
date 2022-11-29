class CreateNvts < ActiveRecord::Migration[7.0]
  def change
    create_table :nvts do |t|
      t.string :title
      t.string :content
      t.string :picture
      t.date :date
      t.integer :price
      t.references :users
      t.integer :user_id

      t.timestamps
    end
  end
end
