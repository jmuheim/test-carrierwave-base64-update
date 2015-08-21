class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :user_id
      t.string :file_upload
      t.string :string_upload

      t.timestamps null: false
    end
  end
end
