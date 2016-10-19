class DropReportIdFromAccountReportPlatform < ActiveRecord::Migration[5.0]
  def change
  	  	remove_column :account_platform_reports, :report_id, :integer

  end
end
