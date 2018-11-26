class HomeController < ApplicationController
  def index
  end
  
  def show
      @item=Item.find(params[:id])
  end

  def addtocart
    if params[:add]
      if current_user.cart == nil
        Cart.create!(user_id: current_user.id)
      end
      current_user.cart.items << Item.find(params[:id])
      redirect_back(fallback_location: root_path)
    elsif params[:remove]
      current_user.cart.items.delete(Item.find(params[:id]))
      redirect_back(fallback_location: root_path)
    end
  end
end
