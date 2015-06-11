class Artist < ActiveRecord::Base
  has_many :quotes
  has_many :albums
  has_many :songs , :class_name => "Song", :foreign_key => "artist_id"

  validates :artist, :presence => true
  validates :photo, :presence => true
  validates :bio, :presence => true
end
