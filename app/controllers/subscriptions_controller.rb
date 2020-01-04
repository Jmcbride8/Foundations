class SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  def create
    puts params
    @current_product ||= Product.find(params[:product_id])

    # Amount in cents
    @amount =  @current_product.price

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Foundation Models subscription',
      currency: 'usd'
    )

  
    Subscription.create(user_id: current_user.id, product_id: @current_product.id)
    redirect_to root_path

    #if unsuccessful, return to the main page
    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path

  end
end
