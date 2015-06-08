class Album < ActiveRecord::Base
  has_many :songs , :class_name => "Song", :foreign_key => "album_id"
  belongs_to :artist
end
