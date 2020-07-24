class AppearancesController < ApplicationController

    def index
      @appearances = Appearance.all
    end

    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @guests = Guest.all
        @episodes = Episode.all
        @appearance = Appearance.new

    end

    def create
        @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
            redirect_to appearance_path(@appearance)
        else
            flash[:my_errors] = @item.errors.full_messages 
            redirect_to new_appearance_path
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end
end