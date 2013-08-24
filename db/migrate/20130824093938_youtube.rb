class Youtube < ActiveRecord::Migration
  def change
    change_table :songs do |t|
      t.string :youtube_id
    end
  end
end
