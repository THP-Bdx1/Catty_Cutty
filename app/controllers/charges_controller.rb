class ChargesController < ApplicationController
  def new
  end
  
  def create

    @order = Order.create!(user_id: current_user.id)
    current_user.cart.items.each do |item|
      @order.items << item
    end
    current_user.cart.items.clear
    @current_email = current_user.email
    UserMailer.mail_commande(@current_email, @order).deliver_later
    UserMailer.mail_commande_admin(@current_email, @order).deliver_later

    # Amount in cents
    @amount = 500
  
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
    
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Cat pics',
      :currency    => 'eur'
    )
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to :root
    end
end
