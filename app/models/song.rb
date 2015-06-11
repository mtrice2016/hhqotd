class Song < ActiveRecord::Base
  has_many :quotes , :class_name => "Quote", :foreign_key => "song_id"
  belongs_to :album , :class_name => "Album", :foreign_key => "album_id"
  belongs_to :artist , :class_name => "Artist", :foreign_key => "artist_id"


  validates :title, :presence => true
end
