class SidersController < ApplicationController
     before_filter :authorize

  def index
    @siders = Sider.all
  end



  def show
    @sider = Sider.find(params[:id])
  end


  def new
    @sider = Sider.new
    render :layout => 'admin'
  end


  def edit
    @sider = Sider.find(params[:id])
    render :layout => 'admin'
  end


  def create
    @sider = Sider.new(params[:sider])


      if @sider.save
        redirect_to "/admin", :flash => { :success => "Lagret" }
      else
        render :new

    end
  end


  def update
    @sider = Sider.find(params[:id])


      if @sider.update_attributes(params[:sider])
         redirect_to "/admin", :flash => { :success => "Oppdatert" }
      else
       render :edit

    end
  end

  def destroy
    @sider = Sider.find(params[:id])
    @sider.destroy
    
     redirect_to "/admin", :flash => { :success => "Slettet" }
  end
end
