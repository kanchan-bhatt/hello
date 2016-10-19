class AccountPlatformReportsController < ApplicationController
      before_action :set_account_platform_report, only: [:show, :create, :destroy]

  def index
    @account_platform_reports = AccountPlatformReport.all
  end

  

  def new
    @account_platform_report = AccountPlatformReport.new
  end

  def create
    @account_platform_report = AccountPlatformReport.new(account_platform_report_params)
    if @account_platform_report.save
      redirect_to account_platform_reports_path
    else
      render 'new'      
    end
  end

  def show
  end

  def destroy
    @account_platform_report.destroy
    redirect_to account_platform_reports_path
  end

private

def set_account_platform_report
    @account_platform_reports = AccountPlatformReport.find(params[:id])

end
def account_platform_report_params
  params.require(:account_platform_report).permit(:platform_report_id, :account_platform_id)
end
end
