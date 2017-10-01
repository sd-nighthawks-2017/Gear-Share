class ItemsController < ApplicationController
  def index
    @items = Item.all.order("created_at DESC")
    
    if params[:search]
      @items = Item.search(params[:search]).order("created_at DESC")
    else 
      @items = Item.all.order("created_at DESC")
    end 
  end

  def show
    @item = Item.find(params[:id])
    @user = @item.user_id
  end

  def new
    @item = Item.new
  end

  def create
   @item = Item.new(item_params)
   @item.user_id = current_user.id

    if @item.save
      redirect_to profile_path(current_user.id)
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(approved: true)
      redirect_to profile_path(current_user.id)
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to profile_path(current_user.id)
    else
      redirect_to profile_path(current_user.id)
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :image)
  end

end
