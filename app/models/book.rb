class Book < ActiveRecord::Base
  has_many :reviews
  mount_uploader :picture, PictureUploader
  validates_presence_of :picture, :on => :create
  letsrate_rateable "overall"
end
