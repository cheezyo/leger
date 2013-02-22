class PagesController < ApplicationController
 before_filter :authorize, only:['home', 'about', 'contactus', 'price', 'gal']

  def home
    
  end
  
  def about
    
  end
  def admin 
     render :layout => 'admin'
  end
  
  def about
    
  end
  
  def contactus
   @booking = Booking.new 
  end
  
  def price
    
  end
  
  def gal
    
  end
  
end
