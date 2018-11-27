class ChargesController < ApplicationController
    def create
      # Amount in cents
      @amount = 500
    
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
    
      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Cat pics,
        :currency    => 'eur'
      )
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to :root
    end
end
