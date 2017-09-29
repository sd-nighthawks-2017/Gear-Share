class DialogsController < ApplicationController
  def new
    @dialog = Dialog.new
  end

  def create
    @dialog = Dialog.new(dialog_params)
    @item = Item.find(params[:item_id])
    @reservation = Reservation.find(params[:reservation_id])
    @dialog.reservation_id = @reservation.id
    @dialog.username = @reservation.user.first_name

    if @dialog.save
      redirect_to "/items/#{@item.id}/reservations/#{@reservation.id}"
    else
      render 'new'
    end
  end

  def edit
    @dialog = Dialog.find(param[:id])
  end

  def update
    @dialog = Dialog.find(params[:id])
    if @dialog.update(dialog_params)
      redirect_to root
    else
      render 'edit'
    end
  end

  def destroy
    @dialog = Dialog.find(params[:id])
    if @dialog.destroy
      redirect_to root
    else
      redirect_to @dialog
    end
  end

  private
    def dialog_params
      params.require(:dialog).permit(:body)
    end

end
