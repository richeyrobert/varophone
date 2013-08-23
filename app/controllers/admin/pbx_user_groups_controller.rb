class Admin::PbxUserGroupsController < AdminController
  # GET /pbx_user_groups
  # GET /pbx_user_groups.json
  def index
    @pbx_user_groups = PbxUserGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pbx_user_groups }
    end
  end

  # GET /pbx_user_groups/1
  # GET /pbx_user_groups/1.json
  def show
    @pbx_user_group = PbxUserGroup.find(params[:id])
    @members = @pbx_user_group.members

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pbx_user_group }
    end
  end

  # GET /pbx_user_groups/new
  # GET /pbx_user_groups/new.json
  def new
    @pbx_user_group = PbxUserGroup.new
    @members = @pbx_user_group.pbx_users

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pbx_user_group }
    end
  end

  # GET /pbx_user_groups/1/edit
  def edit
    @pbx_user_group = PbxUserGroup.find(params[:id])
    @members = @pbx_user_group.pbx_users
  end

  # POST /pbx_user_groups
  # POST /pbx_user_groups.json
  def create
    @pbx_user_group = PbxUserGroup.new(params[:pbx_user_group])

    respond_to do |format|
      if @pbx_user_group.save
        format.html { redirect_to @pbx_user_group, notice: 'Pbx user group was successfully created.' }
        format.json { render json: @pbx_user_group, status: :created, location: @pbx_user_group }
      else
        format.html { render action: "new" }
        format.json { render json: @pbx_user_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pbx_user_groups/1
  # PUT /pbx_user_groups/1.json
  def update
    @pbx_user_group = PbxUserGroup.find(params[:id])

    respond_to do |format|
      if @pbx_user_group.update_attributes(params[:pbx_user_group])
        format.html { redirect_to @pbx_user_group, notice: 'Pbx user group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pbx_user_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pbx_user_groups/1
  # DELETE /pbx_user_groups/1.json
  def destroy
    @pbx_user_group = PbxUserGroup.find(params[:id])
    @pbx_user_group.destroy

    respond_to do |format|
      format.html { redirect_to pbx_user_groups_url }
      format.json { head :no_content }
    end
  end
end
