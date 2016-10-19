class ImportFilesController < ApplicationController
  before_action :set_import_file, only: [:show, :edit, :update, :destroy]

  # GET /import_files
  # GET /import_files.json
  def index
    @import_files = ImportFile.all
  end

  # GET /import_files/1
  # GET /import_files/1.json
  def show
  end

  # GET /import_files/new
  def new
    @import_file = ImportFile.new
  end

  # GET /import_files/1/edit
  def edit
  end

  # POST /import_files
  # POST /import_files.json
  def create
    @import_file = ImportFile.new(import_file_params)

    respond_to do |format|
      if @import_file.save
        format.html { redirect_to @import_file, notice: 'Import file was successfully created.' }
        format.json { render :show, status: :created, location: @import_file }
      else
        format.html { render :new }
        format.json { render json: @import_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_files/1
  # PATCH/PUT /import_files/1.json
  def update
    respond_to do |format|
      if @import_file.update(import_file_params)
        format.html { redirect_to @import_file, notice: 'Import file was successfully updated.' }
        format.json { render :show, status: :ok, location: @import_file }
      else
        format.html { render :edit }
        format.json { render json: @import_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_files/1
  # DELETE /import_files/1.json
  def destroy
    @import_file.destroy
    respond_to do |format|
      format.html { redirect_to import_files_url, notice: 'Import file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_file
      @import_file = ImportFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_file_params
      params.require(:import_file).permit(:name, :cost_data_file_name, :cost_data_content_type, :cost_data_file_size, :cost_data_updated_at)
    end
end
