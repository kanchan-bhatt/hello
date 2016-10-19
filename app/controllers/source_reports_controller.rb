class SourceReportsController < ApplicationController
  before_action :set_source_report, only: [:show, :edit, :update, :destroy]

  # GET /source_reports
  # GET /source_reports.json
  def index
    @source_reports = SourceReport.all
  end

  # GET /source_reports/1
  # GET /source_reports/1.json
  def show
  end

  # GET /source_reports/new
  def new
    @source_report = SourceReport.new
  end

  # GET /source_reports/1/edit
  def edit
  end

  # POST /source_reports
  # POST /source_reports.json
  def create
    @source_report = SourceReport.new(source_report_params)

    respond_to do |format|
      if @source_report.save
        format.html { redirect_to @source_report, notice: 'Source report was successfully created.' }
        format.json { render :show, status: :created, location: @source_report }
      else
        format.html { render :new }
        format.json { render json: @source_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_reports/1
  # PATCH/PUT /source_reports/1.json
  def update
    respond_to do |format|
      if @source_report.update(source_report_params)
        format.html { redirect_to @source_report, notice: 'Source report was successfully updated.' }
        format.json { render :show, status: :ok, location: @source_report }
      else
        format.html { render :edit }
        format.json { render json: @source_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_reports/1
  # DELETE /source_reports/1.json
  def destroy
    @source_report.destroy
    respond_to do |format|
      format.html { redirect_to source_reports_url, notice: 'Source report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_report
      @source_report = SourceReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def source_report_params
      params.require(:source_report).permit(:reportname, :description, :year)
    end
end
