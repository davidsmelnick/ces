class AdminController < ApplicationController
  before_action do 
    redirect_to root_path, alert: 'Access Denied' unless current_user && current_user.admin?
  end
end