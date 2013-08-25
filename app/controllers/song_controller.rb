class SongController < ApplicationController
  def home
   if cookies[:party_id]
      redirect_to :action => 'list_sort', :party_id => cookies[:party_id] 
    end

    
  end
  
  def list_sort
    $party_this=Party.find(params[:party_id])
    @songs=$party_this.songs.order('votes DESC')
  end
  def list
    $party_this=Party.find(params[:party_id])
    @songs=$party_this.songs.order('votes DESC')
    @songs.first.currently_playing=true
    @songs.first.save
  end
  
  def sort
    
    song=Song.find(params[:id])
    song_v=song.votes
    #$party_id=params[:data][:party_id]
    song.votes=song_v+1
    song.save
    song_all=$party_this.songs.order('votes DESC')
    render :json => song_all
  end
  
  def repeated_render
  song_all_repeated= $party_this.songs.order('votes DESC') 
  render :json => song_all_repeated  
  end
  
  def delete
    song=Song.find_by_youtube_id_and_party_id(params[:id], params[:party_id])
    song.destroy
    first_song=$party_this.songs.order('votes DESC')[0]
    first_song.currently_playing=true
    first_song.save
    render :json => first_song
  end
  
end
