class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :artist
      t.string :photo
      t.string :bio

      t.timestamps

    end
  end
end
