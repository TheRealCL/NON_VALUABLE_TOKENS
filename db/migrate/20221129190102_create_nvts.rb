class CreateNvts < ActiveRecord::Migration[7.0]
  def change
    create_table :nvts do |t|
      t.string :title
      t.string :content
      t.string :picture
      t.string :category
      t.date :date
      t.integer :price
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
