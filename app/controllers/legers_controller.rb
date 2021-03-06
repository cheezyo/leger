class LegersController < ApplicationController
   before_filter :authorize#, only:[:show, :new,:create,:edit, :update, :destroy]

  def index
    @legers = Leger.all

  end


  def show
    @leger = Leger.find(params[:id])
  end


  def new
    @leger = Leger.new
    render :layout => 'admin'

  end

  def edit
    @leger = Leger.find(params[:id])
    render :layout => 'admin'
  end


  def create
    @leger = Leger.new(params[:leger])


      if @leger.save
        redirect_to "/admin", :flash => { :success => "Lagret" }
      else
       render :new
    end
  end

  def update
    @leger = Leger.find(params[:id])

 
      if @leger.update_attributes(params[:leger])
       redirect_to "/admin", :flash => { :success => "Oppdatert" }
      else
       render :edit
    end
  end

  def destroy
    @leger = Leger.find(params[:id])
    @leger.destroy

    redirect_to "/admin", :flash => { :success => "Slettet" }
  end
end
