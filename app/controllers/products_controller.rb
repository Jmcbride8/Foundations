class ProductsController < ApplicationController

  def index

    @products = Product.first


    if current_user != nil
      @current_user_id = current_user.id
      if Subscription.where(user_id: @current_user_id).exists?
        @subscription = Subscription.where(user_id: @current_user_id)
      else
        @subscription = "none"
      end
    else
      @subscription = "none"
    end
  end
end