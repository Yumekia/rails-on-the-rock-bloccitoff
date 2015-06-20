class Tasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.references :list, index: true
      t.references :user, index: true
      
      t.timestamps null false
  end
    add_foreign_key :tasks, :list
    add_foreign_key :tasks, :users
  end
end
