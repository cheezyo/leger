class TypesController < ApplicationController
     before_filter :authorize, only:[:index, :new,:create,:edit, :update, :destroy]

  def show
    @type = Type.find(params[:id])
  end
  
end
