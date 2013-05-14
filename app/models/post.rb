class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :comments_attributes

  belongs_to :author
  belongs_to :image

  has_many :comments
  accepts_nested_attributes_for :comments


  def hello
  	"Hello #{self.name}. Thank you for this post."
  end
end

