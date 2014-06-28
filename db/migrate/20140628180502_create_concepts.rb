class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      t.text :name
      t.integer :week_id
      t.timestamps
    end
  end
end
