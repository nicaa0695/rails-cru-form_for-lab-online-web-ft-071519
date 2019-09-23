class ArtistsController < ApplicationController
   def create
     @artist = Artist.create(artist_params)

      redirect_to artist_path(@artist)
   end

    def update
     @artist = Artist.find(params[:id])
     @artist.update(post_params(:name))
     redirect_to artist_path(@artist)
   end

    def show

      @artist = Artist.find_by_id(params[:id])
   end

    def new
     @artist = Artist.new

    end
   def edit
     @artist = Artist.new

    end
   private

  def artist_params
   params.require(:artist).permit(:name, :bio)
 end

  end