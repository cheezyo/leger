class Behandlinger < ActiveRecord::Base
  attr_accessible :content, :hud_id, :title
    belongs_to :hud
end
