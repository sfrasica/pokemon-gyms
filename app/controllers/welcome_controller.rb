class WelcomeController < ApplicationController
    before_action :get_me_trainers

    def index
        @trainers = Trainer.all
    end

    def show
    end

    private

    def get_me_trainers
        @trainers = Trainer.all
    end
    
end
