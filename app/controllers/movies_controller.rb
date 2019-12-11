class MoviesController < ApplicationController

	def new
	 @movie = Movie.new
	end

	def create
	 @movie = Movie.new
	 @movie.user_id = current_user.id
	 @movie.save
	 redirect_to movies_path
	end

	def index
	 @movies = Movie.all
	end

	def show
	 @movie = Movie.find(params[:id])
	end


private
	def movie_params
		params.require(:movie).permit(:movie_title,:caption)
	end

end
