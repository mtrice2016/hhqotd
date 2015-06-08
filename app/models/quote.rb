class Quote < ActiveRecord::Base
  has_many :categories
  belongs_to :artist
  belongs_to :song , :class_name => "Song", :foreign_key => "song_id"

  validates :song, :presence => true
end
