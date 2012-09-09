class BehandlingersController < ApplicationController
  
  def show
    @behandlinger = Behandlinger.find(params[:id])
  end
end
