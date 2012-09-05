class CreateSiders < ActiveRecord::Migration
  def change
    create_table :siders do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
