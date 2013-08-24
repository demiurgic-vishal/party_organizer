class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :party_id
      t.string :itunes_track_id
      t.string :artist
      t.integer :votes
      t.string :title
      t.string :youtube_id
      t.string :album
      

      t.timestamps
    end
  end
end
