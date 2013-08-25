class Current < ActiveRecord::Migration
  def change
    change_table :songs do |song|
      song.boolean 'currently_playing', :default=> false
    end
  end
end
