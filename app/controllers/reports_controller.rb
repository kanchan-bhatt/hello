class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def new
    binding.pry
    @report = Report.new
  end

  def show
  end

  def create
    binding.pry
    @report = Report.new(report_params)
    if @report.save
      redirect_to reports_path
    else
      render 'new'      
    end
  end

  def destroy
    @report.destroy
    redirect_to reports_path
  end

  def update
  end

private
def report_params
  params.require(:report).permit(:name, :abbrev, :file_name, :description, :frequency, :format, :created_by, :updated_by)  
end
end
