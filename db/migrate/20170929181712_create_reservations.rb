class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.datetime :day
      t.string   :city

      t.integer :item_id
      t.integer :renter_id
      t.integer :user_id
      t.timestamps
    end
  end
end
