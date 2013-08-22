class AdminController < ApplicationController
  before_filter :verify_admin
  before_filter :get_pbx
  
  private

  def verify_admin
    unless current_user.has_role? :admin
      redirect_to root_url
    end
  end

  def get_pbx
    if session[:pbx_id].present?
      @pbx = Pbx.find(session[:pbx_id])
    end
  end 
end
