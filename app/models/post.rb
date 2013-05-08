class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title

  belongs_to :author
  belongs_to :image

  has_many :comments


  def hello
  	"Hello #{self.name}. Thank you for this post."
  end
end

