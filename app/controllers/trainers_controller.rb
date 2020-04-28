class TrainersController < ApplicationController
    def new
        @trainer = Trainer.new
    end
    
    def create
        @trainer = Trainer.create(trainer_params)
        if @trainer.valid?
            log_in_trainer @trainer.id
            redirect_to root_path
        else
            flash[:errors] = @trainer.errors.full_messages
            redirect_to new_trainer_path
        end
    end

    private
    
    def trainer_params
        params.require(:trainer).permit(:username, :password)
    end

end
