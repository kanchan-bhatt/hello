class CreateAccountPlatformReports < ActiveRecord::Migration[5.0]
  def change
    create_table :account_platform_reports do |t|
      t.integer :account_id
      t.integer :platform_id
      t.integer :report_id

      t.timestamps
    end
  end
end
