class CreateLegers < ActiveRecord::Migration
  def change
    create_table :legers do |t|
      t.string :name
      t.string :position
      t.text :info

      t.timestamps
    end
  end
end
