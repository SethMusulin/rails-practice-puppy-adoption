class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :user_id
      t.index :user_id
      t.integer :puppy_id
      t.index :puppy_id
      t.timestamps
    end
  end
end
