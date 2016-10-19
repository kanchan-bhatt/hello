class CreateCounterandcustoms < ActiveRecord::Migration[5.0]
  def change
    create_table :counterandcustoms do |t|
      t.string :name
      t.integer :year
      t.string :description
      t.string :report_type
    end
  end
end
