class Product < ActiveRecord::Base
	belongs_to :user
	has_many :votes
	validates :url, presence: true
  validates :description, presence: true
end
