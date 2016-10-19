class CreateSourceReports < ActiveRecord::Migration[5.0]
  def change
    create_table :source_reports do |t|
      t.string :reportname
      t.string :description
      t.integer :year

      t.timestamps
    end
  end
end
