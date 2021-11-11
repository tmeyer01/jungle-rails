class Admin::DashboardController < ApplicationController
  
  http_basic_authenticate_with name: ENV['ADMIN_USER_KEY'], password: ENV['ADMIN_USER_PASS']
 
  def show
  end

end
