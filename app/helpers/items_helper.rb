module ItemsHelper
  def resource_item
    :item
  end

  def res
    @item ||= Item.new
  end

  def create

  end
end
