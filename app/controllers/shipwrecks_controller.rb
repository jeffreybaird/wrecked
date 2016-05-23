class ShipwrecksController < ApplicationController
  def new
    @wreck = Shipwreck.new
  end

  def create
    @wreck = Shipwreck.create(shipwreck_params)
    @wreck.user_id = session[:current_user_id]
    @wreck.save
    redirect_to "/shipwrecks/#{@wreck.id}"
  end

  def show
    @wreck = Shipwreck.find(params[:id])
  end

  def index
    @wrecks = Shipwreck.first(10)
  end

  private

  def shipwreck_params
    params.require(:shipwreck).permit(:shipname, :latitude, :longitude, :summary, :link)
  end

end
