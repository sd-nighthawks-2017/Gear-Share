class NamecreateReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :day, :datetime
    add_column :reservations, :city, :string

    add_column :reservations, :item_id, :integer
    add_column :reservations, :user_id, :integer
    add_column :reservations, :renter_id, :integer

  end
end
