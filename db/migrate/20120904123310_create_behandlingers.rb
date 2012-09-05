class CreateBehandlingers < ActiveRecord::Migration
  def change
    create_table :behandlingers do |t|
      t.integer :hud_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
