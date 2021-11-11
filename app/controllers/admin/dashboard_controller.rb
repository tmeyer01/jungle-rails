class Admin::DashboardController < ApplicationController
  
  http_basic_authenticate_with name: ENV['ADMIN_USER_KEY'], password: ENV['ADMIN_USER_PASS']
 
  def show
    @total_amount_of_products = Product.count
    @total_amount_of_categories = Category.count
  end

end
