class Author < ActiveRecord::Base
  attr_accessible :email, :name, :password, :bio, :website, :twitter

  has_many :posts

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :name, presence: true, uniqueness: true, length: { maximum: 40 } 
  validates :password, presence: true, length: { maximum: 20}
  
end
