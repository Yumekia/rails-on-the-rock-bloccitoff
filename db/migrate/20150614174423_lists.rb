class Lists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.references :user
      
      t.timestamps
    end
  end
end