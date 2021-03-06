class HudsController < ApplicationController
   before_filter :authorize#, only:[:index, :new,:create,:edit, :update, :destroy]

   
  def index
    @huds = Hud.all
  end


  def show
    @hud = Hud.find(params[:id])

  end


  def new
    @hud = Hud.new
    render :layout => 'admin'
  end

  def edit
    @hud = Hud.find(params[:id])
    render :layout => 'admin'
  end

  def create
    @hud = Hud.new(params[:hud])


      if @hud.save
      redirect_to "/admin", :flash => { :success => "Lagret" }
      else
       render :new
      end

  end

  def update
    @hud = Hud.find(params[:id])

      if @hud.update_attributes(params[:hud])
        redirect_to "/admin", :flash => { :success => "Oppdatert"}
      else
       render :edit
    end
  end


  def destroy
    @hud = Hud.find(params[:id])
    @hud.destroy
    redirect_to "/admin", :flash => { :success => "Slettet" }
  end
end
