class Hud < ActiveRecord::Base
    attr_accessible :content, :title, :behandlingers_attributes, :picture, :price
  has_many :behandlingers, :dependent => :destroy
  accepts_nested_attributes_for :behandlingers, allow_destroy: true
end
