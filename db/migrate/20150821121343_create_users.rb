class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :file_upload
      t.string :string_upload

      t.timestamps null: false
    end
  end
end
