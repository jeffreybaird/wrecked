class MapsController < ApplicationController
  layout "map"

  def index
    @wrecks = Shipwreck.all
    @wreck = @wrecks.first
  end

  def refresh
    @wreck = Shipwreck.find(params[:id])
    puts @wreck
    respond_to do |format|
      format.js
    end
  end
end
