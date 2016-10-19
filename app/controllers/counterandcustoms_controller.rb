class CounterandcustomsController < ApplicationController
  before_action :set_counterandcustom, only: [:show, :edit, :update, :destroy]

  # GET /counterandcustoms
  # GET /counterandcustoms.json
  def index
    @counterandcustoms = Counterandcustom.all
  end

  # GET /counterandcustoms/1
  # GET /counterandcustoms/1.json
  def show
  end

  # GET /counterandcustoms/new
  def new
    @counterandcustom = Counterandcustom.new
  end

  # GET /counterandcustoms/1/edit
  def edit
  end

  # POST /counterandcustoms
  # POST /counterandcustoms.json
  def create
    @counterandcustom = Counterandcustom.new(counterandcustom_params)

    respond_to do |format|
      if @counterandcustom.save
        format.html { redirect_to @counterandcustom, notice: 'Counterandcustom was successfully created.' }
        format.json { render :show, status: :created, location: @counterandcustom }
      else
        format.html { render :new }
        format.json { render json: @counterandcustom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /counterandcustoms/1
  # PATCH/PUT /counterandcustoms/1.json
  def update
    respond_to do |format|
      if @counterandcustom.update(counterandcustom_params)
        format.html { redirect_to @counterandcustom, notice: 'Counterandcustom was successfully updated.' }
        format.json { render :show, status: :ok, location: @counterandcustom }
      else
        format.html { render :edit }
        format.json { render json: @counterandcustom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counterandcustoms/1
  # DELETE /counterandcustoms/1.json
  def destroy
    @counterandcustom.destroy
    respond_to do |format|
      format.html { redirect_to counterandcustoms_url, notice: 'Counterandcustom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counterandcustom
      @counterandcustom = Counterandcustom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def counterandcustom_params
      params.require(:counterandcustom).permit(:name, :year, :description, :report_type)
    end
end
