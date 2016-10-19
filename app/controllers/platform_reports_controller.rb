class PlatformReportsController < ApplicationController
  before_action :set_platform_report, only: [:show, :create, :destroy]

  def index
    @platform_reports = PlatformReport.all
  end

 

  def show
  end

   def new
    @platform_report = PlatformReport.new
  end

  def create
    @platform_report = PlatformReport.new(platform_report_params)
    if @platform_report.save
      redirect_to  platform_reports_path
    else
      render 'new'
      
    end
  end

  def destroy
    @platform_report.destroy
    redirect_to platform_reports_path
  end

  def update
  end
private

def set_platform_report
  @platform_report = PlatformReport.find(params[:id])
  
end

def platform_report_params
  params.require(:platform_report).permit(:platform_id, :report_id)
  
end
end
