class Quote < ActiveRecord::Base
  has_many :category_quotes , :class_name => "CategoryQuote", :foreign_key => "quote_id"
  belongs_to :artist
  belongs_to :song , :class_name => "Song", :foreign_key => "song_id"
  has_many :categories, :through => :category_quotes

  validates :song, :presence => true
  validates :lyric, :presence => true

end
