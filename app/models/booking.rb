class Booking < ActiveRecord::Base
  attr_accessible :age, :consoltion, :email, :gender, :message, :name, :phone
  
    validates_presence_of :age, :consoltion, :email, :gender, :name, :phone
end
