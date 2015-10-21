class AddLockVersionFields < ActiveRecord::Migration
  def change
    add_column :users, :lock_version, :integer, default: 0
    add_column :attachments, :lock_version, :integer, default: 0
  end
end
