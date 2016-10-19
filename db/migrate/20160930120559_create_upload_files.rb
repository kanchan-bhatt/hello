class CreateUploadFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :upload_files do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
