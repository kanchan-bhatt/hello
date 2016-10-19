class AddReportsidToAccountPlatforms < ActiveRecord::Migration[5.0]
  def change
    add_column :account_platforms, :reports_id, :integer
  end
end
