class Product < ActiveRecord::Base
	belongs_to :user
	has_many :votes
	has_many :comments
	validates :url, presence: true
  validates :description, presence: true
end
