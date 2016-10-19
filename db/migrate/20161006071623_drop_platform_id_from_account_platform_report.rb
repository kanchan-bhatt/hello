class DropPlatformIdFromAccountPlatformReport < ActiveRecord::Migration[5.0]
  def change
  	remove_column :account_platform_reports, :platform_id, :integer
  end
end
