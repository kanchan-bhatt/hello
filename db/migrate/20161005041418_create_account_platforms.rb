class CreateAccountPlatforms < ActiveRecord::Migration[5.0]
  def change
    create_table :account_platforms do |t|
      t.integer :account_id
      t.integer :platform_id
      
      t.belongs_to :accounts, index: true
      t.belongs_to :platforms, index: true

      t.timestamps
    end
  end
end
