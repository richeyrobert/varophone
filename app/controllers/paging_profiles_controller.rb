class PagingProfilesController < ApplicationController
  # GET /paging_profiles
  # GET /paging_profiles.json
  def index
    @paging_profiles = PagingProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @paging_profiles }
    end
  end

  # GET /paging_profiles/1
  # GET /paging_profiles/1.json
  def show
    @paging_profile = PagingProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paging_profile }
    end
  end

  # GET /paging_profiles/new
  # GET /paging_profiles/new.json
  def new
    @paging_profile = PagingProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paging_profile }
    end
  end

  # GET /paging_profiles/1/edit
  def edit
    @paging_profile = PagingProfile.find(params[:id])
  end

  # POST /paging_profiles
  # POST /paging_profiles.json
  def create
    @paging_profile = PagingProfile.new(params[:paging_profile])

    respond_to do |format|
      if @paging_profile.save
        format.html { redirect_to @paging_profile, notice: 'Paging profile was successfully created.' }
        format.json { render json: @paging_profile, status: :created, location: @paging_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @paging_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /paging_profiles/1
  # PUT /paging_profiles/1.json
  def update
    @paging_profile = PagingProfile.find(params[:id])

    respond_to do |format|
      if @paging_profile.update_attributes(params[:paging_profile])
        format.html { redirect_to @paging_profile, notice: 'Paging profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paging_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paging_profiles/1
  # DELETE /paging_profiles/1.json
  def destroy
    @paging_profile = PagingProfile.find(params[:id])
    @paging_profile.destroy

    respond_to do |format|
      format.html { redirect_to paging_profiles_url }
      format.json { head :no_content }
    end
  end
end
