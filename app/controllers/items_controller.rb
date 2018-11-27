class ItemsController < ApplicationController
  def new
    @item=Item.new
  end

  def create
    @item=Item.create(item_params)
    redirect_to root_path
  end

  def edit
  end

  def index
  end

    private
  def item_params
    params.require(:item).permit(:title, :description, :price, :catimage)
  end
end
