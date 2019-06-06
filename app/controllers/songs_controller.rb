class SongsController < ApplicationController
  def create
      song = Song.new(song_params)
      song.playlist = Playlist.find(params[:playlist_id])
      song.save
      redirect_to playlist_path(song.playlist), notice: 'La canción se creó con exitosamente'
  end

  def destroy
      song = Song.find(params[:id])
      song.delete
      redirect_to playlist_path(song.playlist), notice: 'La canción se eliminó exitosamente'
  end

  private
  def song_params
    params.require(:song).permit(:name, :artist)
  end
end
