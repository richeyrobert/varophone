class SuperAdmin::PbxesController < SuperAdminController
  # GET /pbxes
  # GET /pbxes.json
  def index
    @pbxes = Pbx.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pbxes }
    end
  end

  # GET /pbxes/1
  # GET /pbxes/1.json
  def show
    @pbx = Pbx.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pbx }
    end
  end

  # GET /pbxes/new
  # GET /pbxes/new.json
  def new
    @pbx = Pbx.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pbx }
    end
  end

  # GET /pbxes/1/edit
  def edit
    @pbx = Pbx.find(params[:id])
  end

  # POST /pbxes
  # POST /pbxes.json
  def create
    @pbx = Pbx.new(params[:pbx])

    respond_to do |format|
      if @pbx.save
        format.html { redirect_to [:super_admin, @pbx], notice: 'Pbx was successfully created.' }
        format.json { render json: @pbx, status: :created, location: @pbx }
      else
        format.html { render action: "new" }
        format.json { render json: @pbx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pbxes/1
  # PUT /pbxes/1.json
  def update
    @pbx = Pbx.find(params[:id])

    respond_to do |format|
      if @pbx.update_attributes(params[:pbx])
        format.html { redirect_to @pbx, notice: 'Pbx was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pbx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pbxes/1
  # DELETE /pbxes/1.json
  def destroy
    @pbx = Pbx.find(params[:id])
    @pbx.destroy

    respond_to do |format|
      format.html { redirect_to super_admin_pbxes_url }
      format.json { head :no_content }
    end
  end
end
