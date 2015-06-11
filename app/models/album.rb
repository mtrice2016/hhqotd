class Album < ActiveRecord::Base
  has_many :songs , :class_name => "Song", :foreign_key => "album_id"
  belongs_to :artist
  validates :artist, :presence => true, :uniqueness => { :scope => :title }
  validates :title, :presence => true
end
