class Admin::ExtensionConferenceRoomsController < AdminController
  # GET /extensions
  # GET /extensions.json
  def index
    @extension_conference_rooms = ExtensionConferenceRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @extension_conference_rooms }
    end
  end

  # GET /extensions/1
  # GET /extensions/1.json
  def show
    @extension_conference_room = ExtensionConferenceRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @extension_conference_room }
    end
  end

  # GET /extensions/new
  # GET /extensions/new.json
  def new
    @extension_conference_room = ExtensionConferenceRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @extension_conference_room }
    end
  end

  # GET /extensions/1/edit
  def edit
    @extension_conference_room = ExtensionConferenceRoom.find(params[:id])
  end

  # POST /extensions
  # POST /extensions.json
  def create
    @extension_conference_room = ExtensionConferenceRoom.new(params[:extension])

    respond_to do |format|
      if @extension.save
        format.html { redirect_to [:admin, @extension_conference_room], notice: 'Extension Line was successfully created.' }
        format.json { render json: @extension_conference_room, status: :created, location: @extension_conference_room }
      else
        format.html { render action: "new" }
        format.json { render json: @extension_conference_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /extensions/1
  # PUT /extensions/1.json
  def update
    @extension_conference_room = ExtensionConferenceRoom.find(params[:id])

    respond_to do |format|
      if @extension_conference_room.update_attributes(params[:extension_conference_room])
        format.html { redirect_to @extension_conference_room, notice: 'Extension was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @extension_conference_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extensions/1
  # DELETE /extensions/1.json
  def destroy
    @extension_conference_room = ExtensionConferenceRoom.find(params[:id])
    @extension_conference_room.destroy

    respond_to do |format|
      format.html { redirect_to extension_conference_room_url }
      format.json { head :no_content }
    end
  end
end
