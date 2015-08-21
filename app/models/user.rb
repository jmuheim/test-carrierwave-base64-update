class User < ActiveRecord::Base
  mount_uploader        :file_upload,   ImageUploader
  mount_base64_uploader :string_upload, ImageUploader

  has_many :attachments
  accepts_nested_attributes_for :attachments, reject_if: :all_blank, allow_destroy: true
end
