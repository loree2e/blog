class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :comment, :email, :name, :website
  
  validates :comment, presence: true, length: { maximum: 256 }
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :name, presence: true, uniqueness: true, length: { maximum: 40 } 
  validates :website, presence: true, length: { maximum: 256 } 
end
