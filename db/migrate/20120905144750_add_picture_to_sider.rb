class AddPictureToSider < ActiveRecord::Migration
  def change
    add_column :siders, :picture, :string
  end
end
