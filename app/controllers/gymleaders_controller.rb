class GymleadersController < ApplicationController

    def index
        if request.path != gymleaders_path
            redirect_to gymleaders_path
        end
        @gymleaders = Gymleader.includes(:badges).all
    end

    def show
        @gymleader = Gymleader.find(params[:id])
    end
    
end
