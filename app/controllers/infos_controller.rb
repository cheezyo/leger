class InfosController < ApplicationController
     before_filter :authorize, only:[:index, :new,:create,:edit, :update, :destroy]

  def show
    @info = Info.find(params[:id])
  end
end
