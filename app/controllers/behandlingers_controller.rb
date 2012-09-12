class BehandlingersController < ApplicationController
  before_filter :authorize
  def show
    @behandlinger = Behandlinger.find(params[:id])
  end
end
