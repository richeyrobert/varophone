class Admin::PbxUsersController < AdminController
  # GET /pbx_users
  # GET /pbx_users.json
  def index
    @pbx_users = PbxUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pbx_users }
    end
  end

  # GET /pbx_users/1
  # GET /pbx_users/1.json
  def show
    @pbx_user = PbxUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pbx_user }
    end
  end

  # GET /pbx_users/new
  # GET /pbx_users/new.json
  def new
    @pbx_user = PbxUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pbx_user }
    end
  end

  # GET /pbx_users/1/edit
  def edit
    @pbx_user = PbxUser.find(params[:id])
    @groups = @pbx_user.pbx_user_groups
  end

  # POST /pbx_users
  # POST /pbx_users.json
  def create
    @pbx_user = PbxUser.new(params[:pbx_user])

    respond_to do |format|
      if @pbx_user.save
        format.html { redirect_to edit_admin_pbx_user_path(@pbx_user), notice: 'Pbx user was successfully created.' }
        format.json { render json: @pbx_user, status: :created, location: @pbx_user }
      else
        format.html { render action: "new" }
        format.json { render json: @pbx_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pbx_users/1
  # PUT /pbx_users/1.json
  def update
    @pbx_user = PbxUser.find(params[:id])

    respond_to do |format|
      if @pbx_user.update_attributes(params[:pbx_user])
        format.html { redirect_to edit_admin_pbx_user_path(@pbx_user), notice: 'Pbx user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pbx_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pbx_users/1
  # DELETE /pbx_users/1.json
  def destroy
    @pbx_user = PbxUser.find(params[:id])
    @pbx_user.destroy

    respond_to do |format|
      format.html { redirect_to admin_pbx_users_url }
      format.json { head :no_content }
    end
  end
end
