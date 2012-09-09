class AddPictureToHud < ActiveRecord::Migration
  def change
    add_column :huds, :picture, :string
  end
end
