class AddPlatformReportIdToAccountPlatformReport < ActiveRecord::Migration[5.0]
  def change
    add_column :account_platform_reports, :platform_report_id, :integer
  end
end
