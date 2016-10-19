class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :subject
      t.string :query
      t.string :msg
      t.boolean :send

      t.timestamps
    end
  end
end
