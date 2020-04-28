class PokemonsController < ApplicationController

    def index
        if request.path != pokemons_path
            redirect_to pokemons_path
        end
        @pokemons = Pokemon.includes(:pokeballs).all
    end

    def show
        @pokemon = Pokemon.find(params[:id])
    end
end
