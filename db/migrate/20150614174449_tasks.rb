class Tasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.references :list, index: true
      
      t.timestamps
  end
  end
end
