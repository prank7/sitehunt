class AddUrlDescriptionVotedbyToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :url, :string
  	add_column :products, :description, :text
  	add_column :products, :votedby, :text
  end
end
