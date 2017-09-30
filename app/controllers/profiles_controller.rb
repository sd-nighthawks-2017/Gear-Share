class ProfilesController < ApplicationController
  def show
    @items = Item.where(user_id: current_user.id)
    @reservations = Reservation.where(renter_id: current_user.id)
    @requests = Reservation.where(user_id: current_user.id)
  end
end
