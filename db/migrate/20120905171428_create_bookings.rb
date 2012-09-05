class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :gender
      t.string :age
      t.string :name
      t.string :email
      t.string :phone
      t.string :consoltion
      t.text :message

      t.timestamps
    end
  end
end
