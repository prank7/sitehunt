class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :title
      t.integer :product_id
      t.integer :votes

      t.timestamps
    end
  end
end
