class CreateImportFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :import_files do |t|
      t.string :name
      t.string :cost_data_file_name
      t.string :cost_data_content_type
      t.string :cost_data_file_size
      t.string :cost_data_updated_at

      t.timestamps
    end
  end
end
