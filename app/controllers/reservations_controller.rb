class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @item = Item.find(params[:item_id])
    @reservation = Reservation.find(params[:id])
    @dialogs = Dialog.where(reservation_id: @reservation.id)
  end

  def new
    @item = Item.find(params[:item_id])
    @reservation = Reservation.new
  end

  def create
    @item = Item.find(params[:item_id])
    @reservation = Reservation.new(res_params)
    @reservation.item_id = @item.id
    @reservation.renter_id = current_user.id
    @reservation.user_id = @item.user.id
    @user = User.find(@item.user.id)

    if @reservation.save
      #ReservationMailer.new_reservation_email(@user, @item)
      redirect_to "/items/#{@item.id}/reservations/#{@reservation.id}"
    else
      render 'new'
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(res_params)
      redirect_to @reservation
    else
      render 'edit'
    end
  end

  def destroy
    @reservation = reservation.find(params[:id])
    if @reservation.destroy
      redirect_to reservations_path
    else
      redirect_to reservation_path
    end
  end

  private

  def res_params
    params.require(:reservation).permit(:day, :city, :message)
  end

end
