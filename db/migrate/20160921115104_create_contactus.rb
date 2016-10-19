class CreateContactus < ActiveRecord::Migration[5.0]
  def change
    create_table :contactus do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :message

      t.timestamps
    end
  end
end
