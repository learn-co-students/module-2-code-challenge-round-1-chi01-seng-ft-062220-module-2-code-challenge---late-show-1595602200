class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @appearances = Appearance.all
    @episode = Episode.find(params[:id])
  end
end
