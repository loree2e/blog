class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title

  belongs_to :author
  belongs_to :image

  has_many :comments

  validates :content, presence: true, length: { maximum: 256 } 
  validates :name, presence: true, length: { maximum: 40 }
  validates :title, presence: true, length: { maximum: 40 }

  scope :order_by_author, lambda{ joins(:author).order( 'authors.name ASC') }

  def hello
  	"Hello #{self.name}. Thank you for this post."
  end
end

