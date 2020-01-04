class ProductsController < ApplicationController

  def index
    @products = Product.first

    @current_user_id = current_user.id
    if Subscription.where(user_id: @current_user_id).exists?
      @subscription = Subscription.where(user_id: @current_user_id)
    else
      @subscription = "none"
    end
  end
end