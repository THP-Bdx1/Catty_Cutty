class HomeController < ApplicationController
  def index
    if user_signed_in?
      if current_user.cart == nil
        Cart.create!(user_id: current_user.id)
      end
    end
  end
  
  def show
      @item=Item.find(params[:id])
  end

  def addtocart
    if params[:add]
      current_user.cart.items << Item.find(params[:id])
      redirect_back(fallback_location: root_path)
    elsif params[:remove]
      current_user.cart.items.delete(Item.find(params[:id]))
      redirect_back(fallback_location: root_path)
    else
      redirect_to "/ERROR"
    end 
  end

  def cart
    @cartlength = current_user.cart.items.length
    c = 0
    current_user.cart.items.each do |item|
      c += item.price
    end
    @cartprice = c
  end
  
  def checkout
    @order = Order.create!(user_id: current_user.id)
    current_user.cart.items.each do |item|
      @order.items << item
    end
    current_user.cart.items.clear

    UserMailer.mail_commande(@order, current_user.email).deliver_later
    redirect_to "/profile"
  end

  def profile
  end

  def admin
    if current_user.admin == false
      redirect_to "/"
    end
  end
end
