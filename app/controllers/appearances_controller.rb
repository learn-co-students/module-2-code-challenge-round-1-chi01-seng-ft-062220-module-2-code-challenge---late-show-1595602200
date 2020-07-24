class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        @appearance = Appearance.create(app_params)

        if @appearance.valid?
            redirect_to episode_path(Episode.find(@appearance.episode_id))
        else
            flash[:my_errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def app_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end