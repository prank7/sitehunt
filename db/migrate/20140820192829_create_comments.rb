class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :product_id
      t.integer :user_id
      t.text :description
      t.integer :votes

      t.timestamps
    end
  end
end
