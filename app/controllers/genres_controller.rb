class GenresController < ApplicationController
   def create
     @genre = Genre.create(artist_params)

      redirect_to genre_path(@genre)
   end

    def update
   end

    def show

      @genre = Genre.find_by_id(params[:id])

    end

    def new
     @genre = Genre.new

    end

    def edit
     @genre = Genre.new

    end
   private
   def artist_params
     params.require(:genre).permit(:name)
   end

  end