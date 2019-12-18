class ProductsController < ApplicationController

  def index
    @products = Product.first
  end

  def new
    
  end

end