class Attachment < ActiveRecord::Base
  mount_base64_uploader :file_upload,   ImageUploader
  mount_base64_uploader :string_upload, ImageUploader

  belongs_to :user

  validates :name, presence: true
end
