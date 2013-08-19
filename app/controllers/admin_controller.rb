class AdminController < ApplicationController
  before_filter :verify_admin

  private

  def verify_admin
    unless current_user.has_role? :admin
      redirect_to root_url
    end
  end
end
