class KirurgisController < ApplicationController
  # GET /kirurgis
  # GET /kirurgis.json
  def index
    @kirurgis = Kirurgi.all
  end

  def show
    @kirurgi = Kirurgi.find(params[:id])
  end

  def new
    @kirurgi = Kirurgi.new
  end

  def edit
    @kirurgi = Kirurgi.find(params[:id])
  end

  def create
    @kirurgi = Kirurgi.new(params[:kirurgi])

    
      if @kirurgi.save
        redirect_to "/admin", :flash => { :success => "Lagret" }
     else
       render :new

    end
  end

  def update
    @kirurgi = Kirurgi.find(params[:id])

    
      if @kirurgi.update_attributes(params[:kirurgi])
        redirect_to "/admin", :flash => { :success => "Oppdatert" }
      else
        render :edit
        
    end
  end

  def destroy
    @kirurgi = Kirurgi.find(params[:id])
    @kirurgi.destroy
   redirect_to "/admin", :flash => { :success => "Slettet" }
   
  end
end
