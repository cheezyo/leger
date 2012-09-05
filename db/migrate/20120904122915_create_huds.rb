class CreateHuds < ActiveRecord::Migration
  def change
    create_table :huds do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
