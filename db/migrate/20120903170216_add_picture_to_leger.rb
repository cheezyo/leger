class AddPictureToLeger < ActiveRecord::Migration
  def change
    add_column :legers, :picture, :string
  end
end
