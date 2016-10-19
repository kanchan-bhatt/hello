class DropAccountIdFromAccountReportPlatform < ActiveRecord::Migration[5.0]
  def change
  	remove_column :account_platform_reports, :account_id, :integer
  end
end
