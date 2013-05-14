class Image < ActiveRecord::Base
  belongs_to :author
  belongs_to :imageable
  attr_accessible :description, :img

  validates :description, presence: true, length: { maximum: 256 } 
  validates :img, presence: true,
end
