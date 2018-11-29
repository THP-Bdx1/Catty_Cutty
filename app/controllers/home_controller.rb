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
      @favorites=Favorite.all
      @category=Category.find(@item.category_id)
      if current_user != nil
        @favorite=Favorite.find_by(user_id: current_user.id, item_id: params[:id])
      end
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
      flash[:danger] = "You must be logged in to access this section"
    end
  end
  
  def checkout
    @order = Order.create!(user_id: current_user.id)
    current_user.cart.items.each do |item|
      @order.items << item
    end
    puts "LAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    current_user.cart.items.clear
    @current_email = current_user.email
    UserMailer.mail_commande(@current_email, @order).deliver_later
    UserMailer.mail_commande_admin(@current_email, @order).deliver_later
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
      if params[:review][:star] != 0 && params[:review][:content] != ""
        @star = params[:review][:star].to_i
        @order_id = params[:review][:order_id].to_i
        @item_id = params[:review][:item_id].to_i
        @user_id = params[:review][:user_id].to_i
        if @star >= 1 && @star <= 10
          Review.create!(user_id: @user_id, order_id: @order_id, item_id: @item_id, content: params[:review][:content], star: @star)      
          redirect_to profile_path
          flash[:sucess] = "Votre review a bien été prise en compte!"
        else
          redirect_to profile_path
          flash[:danger] = "Vous n'avez pas remplis les champs requis"
        end
      else
        redirect_to profile_path
        flash[:danger] = "Vous n'avez pas remplis les champs requis"
      end
    end
  end


  def profilepost
    @order_id = params[:order_id]
    @item_id = params[:item_id]
    redirect_to "/reviewpage/#{@order_id}/#{@item_id}"
  end

  def reviewpage
    @review = Review.new
    if current_user.orders.ids.include?(params["orderid"].to_i) 
      if Order.find(params["orderid"].to_i).items.include?(Item.find(params["itemid"].to_i))
        if Review.find_by(user_id: current_user.id, order_id: params["orderid"].to_i, item_id: params["itemid"].to_i)
          redirect_to root_path
          flash[:danger] = "Vous avez déjà noté ce produit"
        end
      else
        redirect_to root_path
        flash[:danger] = "Vous n'avez pas acheté cet item"
      end
    else 
      redirect_to root_path
      flash[:danger] = "Vous n'avez pas passé cette commande"
    end 
  end

  def fav
      @user = User.find(params[:user_id])
      @item=Item.find(params[:item_id])
      puts "ça fav"
      respond_to do |format|
        format.html
        format.js {render :layout => false}
      end
    @favorite=Favorite.create!(user_id: current_user.id, item_id: params[:item_id])
  end

    def unfav
      @user = User.find(params[:user_id])
      @item=Item.find(params[:item_id])
      puts "ça défav"
      respond_to do |format|
        format.html
        format.js {render :layout => false}
      end
    @favorite=Favorite.find_by(user_id: current_user.id, item_id: params[:item_id])
    @favorite.destroy
  end

  def favoris
    @favoris=current_user.favorites
    @items=Item.all
  end

  def category
    if params[:id] != nil
      @category=Category.find(params[:id])
      @items=Item.where(category_id: params[:id])
    else
          @items=Item.order('created_at DESC')
    if user_signed_in?
      if current_user.cart == nil
        Cart.create!(user_id: current_user.id)
      end
    end
    end
  end

end
