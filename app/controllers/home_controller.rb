class HomeController < ApplicationController
  def index
    @items=Item.order('created_at DESC')
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
    elsif  params[:remove]
      current_user.cart.items.delete(Item.find(params[:id]))
      redirect_back(fallback_location: root_path)
    end
  end


  def cart
    if user_signed_in?
      @cartlength = current_user.cart.items.length
      c = 0
      current_user.cart.items.each do |item|
        c += item.price
      end
      @cartprice = c
    else
      redirect_back(fallback_location: root_path)
      flash[:error] = "You must be logged in to access this section"
    end
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
    @review=Review.new
  end

  def admin
    @users = User.all
    @orders = Order.all
    if current_user.admin == false
      redirect_to "/"
    end
  end

  def superpost
    if params[:user_id]
      User.find(params[:user_id]).update(admin: true)
      redirect_back(fallback_location: admin_path)

    elsif params[:review][:content]
      if params[:review][:star] >= 0 && params[:review][:star] <= 10
        Review.all.each do |current_review|
          if current_review.order_id == params[:review][:order_id] && current_review.order_id == params[:review][:item_id]
            current_review.update(user_id: params[:review][:user_id], order_id: params[:review][:order_id], item_id: params[:review][:item_id], content: params[:review][:content], star: params[:review][:star])
            redirect_back(fallback_location: profile_path)
          end
        end
        current_review.create!(user_id: params[:review][:user_id], order_id: params[:review][:order_id], item_id: params[:review][:item_id], content: params[:review][:content], star: params[:review][:star])      
        redirect_back(fallback_location: profile_path)
      
      else 
        redirect_to root_path
      end
    end

  end



end
