class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def after_sign_in_path_for(resource)
    if resource.is_a?(User) && resource.has_role?(:super_admin)
      super_admin_dashboard_url
    elsif resource.is_a?(User) && resource.has_role?(:admin)
      admin_dashboard_url
    else
      #redirect to user pbx management
    end
  end
end
