class AppearancesController < ApplicationController


    def new 
        @appearance = Appearance.new
        
        @episodes = Episode.all 
        @guests = Guest.all
    end

    def create 
        appearance = Appearance.create(appearance_params)

        if appearance.valid? 
            redirect_to episode_path#(artist)
        else
            flash[:appearance_errors] = appearance.errors.full_messages
            redirect_to new_appearance_path
        end

        #redirect_to episode_path(appearance.episode)
    end 

    private

    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end  

end
