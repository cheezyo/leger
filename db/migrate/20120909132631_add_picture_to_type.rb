class AddPictureToType < ActiveRecord::Migration
  def change
    add_column :types, :picture, :string
  end
end
