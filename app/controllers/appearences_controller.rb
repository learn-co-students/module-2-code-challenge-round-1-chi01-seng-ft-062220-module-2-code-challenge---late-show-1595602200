class AppearencesController < ApplicationController
    def new
        @episode = Episode.all 
        @guest = Guest.all
        @appearence = Appearence.new
    end
    
    def create
        @appearence = Appearence.create(appearence_params)
        if @appearence.valid?
            redirect_to guest_path(@appearence.guest)
        else   
            flash[:my_errors] = @appearence.errors.full_messages
            redirect_to new_appearence_path
        end        
    end
    
    private
    def appearence_params
        params.require(:appearence).permit(:episode_id, :guest_id, :rating)
    end    
end
