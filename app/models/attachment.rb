class Attachment < ActiveRecord::Base
  mount_uploader        :file_upload,   ImageUploader
  mount_base64_uploader :string_upload, ImageUploader

  belongs_to :user
end
