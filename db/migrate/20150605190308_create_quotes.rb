class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :lyric
      t.integer :song_id
      t.integer :artist_id

      t.timestamps

    end
  end
end
