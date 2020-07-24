class AppearancesController < ApplicationController

    def new 
        @appearance = Appearance.new

        @episodes = Episode.all 
        @guests = Guest.all
    end


    def create
        @appearance = Appearance.new(appearance_params)
    
        respond_to do |format|
          if @appearance.save
            format.html { redirect_to episode_path, notice: 'Rating has been saved' }
          else
            format.html { render :new }
          end
        end
      end

      
    private 

    def appearance_params
      params.require(:appearance).permit(:guest_id, :appearance_id)
    end 

end
