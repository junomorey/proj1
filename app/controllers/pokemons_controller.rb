class PokemonsController < ApplicationController

	def capture
		@pm = Pokemon.find(params[:id])
		@pm.trainer_id = current_trainer.id
		@pm.save
		redirect_to root_path
	end

	def damage
		@pm = Pokemon.find(params[:id])
		@pm.health -= 10
		@pm.save
		if @pm.health  <= 0
			@pm.destroy
		end
		redirect_to current_trainer
	end

	def new
		@pm = Pokemon.new
	end

	def create
		@pm = Pokemon.new pokemon_params
		@pm.health = 100
		@pm.level = 1
		@pm.trainer_id = current_trainer.id
		if @pm.save	
			redirect_to current_trainer
		else
			flash[:error] = "@pokemon.errors.full_messages.to_sentence"
			render :new
		end
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end
