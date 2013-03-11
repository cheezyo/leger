class AddTelfAndEmailToLegers < ActiveRecord::Migration
  def change
    add_column :legers, :telf, :string
    add_column :legers, :email, :string
  end
end
