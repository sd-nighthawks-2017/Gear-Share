module ItemsHelper
  def resource_item
    :item
  end

  def res
    @item ||= Item.new
  end

  def resource_reservation
    :reservation
  end

  def reservation
    @reservatopm ||= Reservation.new
  end

  def create

  end
end
