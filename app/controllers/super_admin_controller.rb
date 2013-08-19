class SuperAdminController < ApplicationController
  before_filter :verify_super_admin


  private 

  def verify_super_admin
    unless current_user.has_role? :super_admin
      redirect_to root_url
    end
  end
end
