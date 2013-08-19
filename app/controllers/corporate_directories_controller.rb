class CorporateDirectoriesController < ApplicationController
  # GET /corporate_directories
  # GET /corporate_directories.json
  def index
    @corporate_directories = CorporateDirectory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @corporate_directories }
    end
  end

  # GET /corporate_directories/1
  # GET /corporate_directories/1.json
  def show
    @corporate_directory = CorporateDirectory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @corporate_directory }
    end
  end

  # GET /corporate_directories/new
  # GET /corporate_directories/new.json
  def new
    @corporate_directory = CorporateDirectory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @corporate_directory }
    end
  end

  # GET /corporate_directories/1/edit
  def edit
    @corporate_directory = CorporateDirectory.find(params[:id])
  end

  # POST /corporate_directories
  # POST /corporate_directories.json
  def create
    @corporate_directory = CorporateDirectory.new(params[:corporate_directory])

    respond_to do |format|
      if @corporate_directory.save
        format.html { redirect_to @corporate_directory, notice: 'Corporate directory was successfully created.' }
        format.json { render json: @corporate_directory, status: :created, location: @corporate_directory }
      else
        format.html { render action: "new" }
        format.json { render json: @corporate_directory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /corporate_directories/1
  # PUT /corporate_directories/1.json
  def update
    @corporate_directory = CorporateDirectory.find(params[:id])

    respond_to do |format|
      if @corporate_directory.update_attributes(params[:corporate_directory])
        format.html { redirect_to @corporate_directory, notice: 'Corporate directory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @corporate_directory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corporate_directories/1
  # DELETE /corporate_directories/1.json
  def destroy
    @corporate_directory = CorporateDirectory.find(params[:id])
    @corporate_directory.destroy

    respond_to do |format|
      format.html { redirect_to corporate_directories_url }
      format.json { head :no_content }
    end
  end
end
