class Admin::ExtensionRingGroupsController < AdminController
  # GET /extensions
  # GET /extensions.json
  def index
    @extension_ring_groups = ExtensionRingGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @extension_ring_groups }
    end
  end

  # GET /extensions/1
  # GET /extensions/1.json
  def show
    @extension_ring_group = ExtensionRingGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @extension_ring_group }
    end
  end

  # GET /extensions/new
  # GET /extensions/new.json
  def new
    @extension_ring_group = ExtensionRingGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @extension_ring_group }
    end
  end

  # GET /extensions/1/edit
  def edit
    @extension_ring_group = ExtensionRingGroup.find(params[:id])
  end

  # POST /extensions
  # POST /extensions.json
  def create
    @extension_ring_group = ExtensionRingGroup.new(params[:extension])

    respond_to do |format|
      if @extension.save
        format.html { redirect_to [:admin, @extension_ring_group], notice: 'Extension Line was successfully created.' }
        format.json { render json: @extension_ring_group, status: :created, location: @extension_ring_group }
      else
        format.html { render action: "new" }
        format.json { render json: @extension_ring_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /extensions/1
  # PUT /extensions/1.json
  def update
    @extension_ring_group = ExtensionRingGroup.find(params[:id])

    respond_to do |format|
      if @extension_ring_group.update_attributes(params[:extension_ring_group])
        format.html { redirect_to @extension_ring_group, notice: 'Extension was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @extension_ring_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extensions/1
  # DELETE /extensions/1.json
  def destroy
    @extension_ring_group = ExtensionRingGroup.find(params[:id])
    @extension_ring_group.destroy

    respond_to do |format|
      format.html { redirect_to extension_lines_url }
      format.json { head :no_content }
    end
  end
end
