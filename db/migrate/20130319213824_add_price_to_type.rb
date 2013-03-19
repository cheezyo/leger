class AddPriceToType < ActiveRecord::Migration
  def change
    add_column :types, :price, :string
  end
end
