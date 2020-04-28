class ApplicationController < ActionController::Base
    before_action :setup_notifications, :setup_authorizations

    def setup_notifications
        @errors = flash[:errors]
        @notification = flash[:notification]
    end

    def setup_authorizations
        @logged_in = logged_in?
        @logged_in_trainer = Trainer.find(current_trainer_id) if logged_in?
        @can_catch_pokemon = logged_in? && @logged_in_trainer.can_catch_pokemon
    end

    private

    def log_out_trainer!
        session.delete(:trainer_id)
    end

    def log_in_trainer(trainer_id)
        session[:trainer_id] = trainer_id
    end

    def logged_in?
        !!current_trainer_id
    end

    def current_trainer_id
        session[:trainer_id]
    end
end
