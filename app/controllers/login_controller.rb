class LoginController < ApplicationController
    def new
    end

    def create
        @trainer = Trainer.find_by(username: params[:username])
        if @trainer && @trainer.authenticate(params[:password])
            log_in_trainer @trainer.id
            redirect_to root_path
        else
            flash[:errors] = [ "We don't have a trainer with that username and password"]
            redirect_to new_login_path
        end
    end

    def destroy
        log_out_trainer!
        redirect_to root_path
    end
end
