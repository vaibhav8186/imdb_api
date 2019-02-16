class Api::V1::ActorsController < ApplicationController
	 before_action :find_actor, only: %i[show  update destroy]

	def index
		@actors = Actor.all
		render json: @actors
	end
	def create
		@actor = Actor.create(actor_param)
		if @actor.save
			render json: @actor
		else
			render json: { message: 'Unable to create' }, status: 500
		end
	end
	def show
		@actor = Actor.find(params[:id])
		render json: @actor
	end
	def update
		if @movie.update(actor_param)
			render json: @movie
		else
			render json: { message: 'unable to update'}, status: 500
		end
	end
	def destroy
		if @movie.destroy
			render json: @movie
		else
			render json: { message: 'unable to update'}, status: 500
		end
	end
	def find_actor
		@movie = Actor.find(params[:id])
	end
	private
	def actor_param
		params.require(:actor).permit(:actorname, :description, :actordob)
	end
end