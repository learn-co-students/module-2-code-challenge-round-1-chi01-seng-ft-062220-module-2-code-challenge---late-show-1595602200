class AppearancesController < ApplicationController
    def new
       @appearance = Appearance.new 
       
       @episodes = Episode.all 
       @guests = Guest.all 
       
    end 

    def create
            appearance = Appearance.create(appearance_param)

            redirect_to episode_path
    
    end 


    private

    def appearance_param
        params.require(:appearance).permit(:guest_id, :episode_id, :numeric_rating)
    end

end
