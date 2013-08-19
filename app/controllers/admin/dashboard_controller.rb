class Admin::DashboardController < AdminController
  def index
    if params[:pbx_id].present?
      session[:pbx_id] = params[:pbx_id]
      @pbx = Pbx.find(params[:pbx_id])
    end
  end
end
