class Api::V1::MoviesController < ApplicationController

	def index
		@movies = Movie.all
    render json: @movies
	end
	def create
		@movie = Movie.create(movie_params)
		if @movie.save
			render json: @movie 
		else
			render json: {message: 'Unable to create'}, status: 500
		end
	end
	
	def update
		@movie = Movie.find(params[:id])
		if @movie.update(movie_params) 
			render json: @movie
		else
			render json: {message:'Unable to update'}, status:500
		end
	end
	def show
		@movie = Movie.find(params[:id])
		render json:@movie
	end
  def destroy
  	@movie = Movie.find(params[:id])
  	if @movie.destroy
  		render json: @movie
  	else
  		render json:{message: 'unable to delete'}, status:500
  	end
  end

	private
	def movie_params
		params.require(:movie).permit(:name, :description, :rating, :release)
	end
end
