class Image < ActiveRecord::Base
  belongs_to :author
  belongs_to :imageable
  attr_accessible :description, :img
end
