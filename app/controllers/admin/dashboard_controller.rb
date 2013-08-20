class Admin::DashboardController < AdminController
  def index
    @dashboard_boxes = Dashboard.boxes_for(current_user)
    if params[:pbx_id].present?
      session[:pbx_id] = params[:pbx_id]
      @pbx = Pbx.find(params[:pbx_id])
    elsif session[:pbx_id].present?
      @pbx = Pbx.find(session[:pbx_id])
    else 
      # TODO: Might need to think of a better way to handle missing pbx_id parameter.
      @pbx = Pbx.new
    end
  end
end
