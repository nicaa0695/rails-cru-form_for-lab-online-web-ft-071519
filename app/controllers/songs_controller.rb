class SongsController < ApplicationController
  def index
 @songs = Song.all
  end
   def create

      @song = Song.create(artist_params)

      redirect_to song_path(@song)
   end

    def update
   end

    def show

      @song = Song.find_by_id(params[:id])
     @genre = @song.genre
     @artist = @song.artist
   end

    def new
     @song = Song.new

    end

    def edit
     @song = Song.new

    end
   private
   def artist_params
     params.require(:song).permit(:name, :artist_id, :genre_id)
   end

  end