class Author < ActiveRecord::Base
  attr_accessible :email, :name, :password, :bio, :website, :twitter

  has_many :posts
end
