class ItemsController < ApplicationController

  before_action :admin

  def new
    @item=Item.new
  end

  def create
    @item=Item.create(item_params)
    redirect_to root_path
  end

  def edit
        @item=Item.find(params[:id])
  end

  def update
    @item=Item.find(params[:id])
    puts @item.title
    puts @item.id
    puts "Les params #{item_params}"
    @item.update(item_params)
    #redirect_to items_path
    redirect_to items_path
  end

  def index
    @items=Item.order('created_at DESC')
  end

  def destroy
    @item=Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end

    private
  def item_params
    params.require(:item).permit(:title, :description, :price, :catimage)
  end
end
