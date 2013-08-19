class SuperAdmin::DashboardController < SuperAdminController
  def index
    @pbxes = current_user.pbxes
  end
end
