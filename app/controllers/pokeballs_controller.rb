class PokeballsController < ApplicationController
    

    def index
        @pokeballs = @logged_in_trainer.pokeballs
        @badges = @logged_in_trainer.badges
    end

    def new
        @pokeball = Pokeball.new
    end

    def create
        unless logged_in?
            flash[:notification] = "Please Log in first, unknown trainer!"
            return redirect_to new_login_path
        end

        if @can_catch_pokemon
            @pokeball = Pokeball.create(trainer_id: current_trainer_id, pokemon_id: params[:pokeball][:pokemon_id])
        else
            flash[:notification] = "You need more badges to get more pokemon!"
        end
        redirect_to root_path
    end
    
    def destroy
        @pokeball = Pokeball.find(params[:id])
        @pokeball.destroy
        redirect_to pokeballs_path
    end
end
