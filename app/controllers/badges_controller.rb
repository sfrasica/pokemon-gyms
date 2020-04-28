class BadgesController < ApplicationController
    def index
        @badges = @logged_in_trainer.badges
    end

    def create
        unless logged_in?
            flash[:notification] = "Please Log in first, unknown trainer!"
            return redirect_to new_login_path
        end


        if @logged_in_trainer.can_battle
            @badge = Badge.create(trainer_id: current_trainer_id, gymleader_id: params[:gymleader_id])
            if !@badge.valid?
                flash[:notification] = "You've already received this Gym Badge."
                redirect_to pokeballs_path
            else
                flash[:notification] = "Congratulations on defeating #{@badge.gymleader.name}!"
                redirect_to pokeballs_path
            end
        else
            flash[:notification] = "You don't have enough Pokemon to battle this Gym Leader. Add a Pokemon to your party."
            redirect_to root_path
        end
    end
end
