class Lists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.references :user
      
      t.timestamps null: false
  end
  add_foreign_key :lists, :users
  end
end