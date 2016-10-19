class AddAccountPlatformIdToAccountPlatformReport < ActiveRecord::Migration[5.0]
  def change
    add_column :account_platform_reports, :account_platform_id, :integer
  end
end
