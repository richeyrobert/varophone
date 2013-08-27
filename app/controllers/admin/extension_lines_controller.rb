class Admin::ExtensionLinesController < AdminController
  # GET /extensions
  # GET /extensions.json
  def index
    @extension_lines = ExtensionLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @extension_lines }
    end
  end

  # GET /extensions/1
  # GET /extensions/1.json
  def show
    @extension_line = ExtensionLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @extension_line }
    end
  end

  # GET /extensions/new
  # GET /extensions/new.json
  def new
    @extension_line = ExtensionLine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @extension_line }
    end
  end

  # GET /extensions/1/edit
  def edit
    @extension_line = ExtensionLine.find(params[:id])
  end

  # POST /extensions
  # POST /extensions.json
  def create
    @extension_line = ExtensionLine.new(params[:extension])

    respond_to do |format|
      if @extension.save
        format.html { redirect_to [:admin, @extension_line], notice: 'Extension Line was successfully created.' }
        format.json { render json: @extension_line, status: :created, location: @extension_line }
      else
        format.html { render action: "new" }
        format.json { render json: @extension_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /extensions/1
  # PUT /extensions/1.json
  def update
    @extension_line = ExtensionLine.find(params[:id])

    respond_to do |format|
      if @extension_line.update_attributes(params[:extension_line])
        format.html { redirect_to @extension_line, notice: 'Extension was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @extension_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extensions/1
  # DELETE /extensions/1.json
  def destroy
    @extension_line = ExtensionLine.find(params[:id])
    @extension_line.destroy

    respond_to do |format|
      format.html { redirect_to extension_lines_url }
      format.json { head :no_content }
    end
  end
end
