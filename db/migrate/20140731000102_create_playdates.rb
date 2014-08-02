class CreatePlaydates < ActiveRecord::Migration
  def change
    create_table :playdates do |t|
      t.integer :user_id
      t.index :user_id
      t.integer :puppy_id
      t.index :puppy_id
      t.datetime :date
      t.timestamps
    end
  end
end
