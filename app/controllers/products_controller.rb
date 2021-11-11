class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    # raise "hello"
    @product = Product.find params[:id]
  end

end
