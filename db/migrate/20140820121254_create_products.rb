class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :productname
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
