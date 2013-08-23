class Admin::DeviceButtonsController < AdminController
  def index
  end

  def show
  end

  def create
    @device_button = DeviceButton.new(params[:device_button])
    @device = Device.find(params[:device_button][:device_id])
    respond_to do |format|
      if @device_button.save
        format.html { redirect_to edit_admin_device_path(@device), notice: 'Pbx user group was successfully created.' }
        format.json { render json: @device_button, status: :created, location: @device_button }
      else
        format.html { render action: "new" }
        format.json { render json: @device_button.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @device_button = DeviceButton.find(params[:id])

    respond_to do |format|
      if @device_button.update_attributes(params[:device_button])
        format.html { redirect_to admin_devices_path, notice: 'Device Button was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @device_button.errors, status: :unprocessable_entity }
      end
    end
    
  end

  def new
    @device_button = DeviceButton.new
    @device = Device.find(params[:device])
  end

  def edit
    @device_button = DeviceButton.find(params[:id])
    @device = Device.find(params[:device])
  end

  def destroy
  end

end