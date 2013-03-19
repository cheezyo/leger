class AddPriceToHud < ActiveRecord::Migration
  def change
    add_column :huds, :price, :string
  end
end
