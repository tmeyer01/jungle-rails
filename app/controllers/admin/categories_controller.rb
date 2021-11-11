class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USER_KEY'], password: ENV['ADMIN_USER_PASS']

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @categoryt = Product.new(product_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  
  private

  def category_params
    params.require(:category).permit(
      :name,
      
    )
  end
end
