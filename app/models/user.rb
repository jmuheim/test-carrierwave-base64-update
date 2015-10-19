class User < ActiveRecord::Base
  mount_base64_uploader :file_upload,   ImageUploader
  mount_base64_uploader :string_upload, ImageUploader

  has_many :attachments
  accepts_nested_attributes_for :attachments, allow_destroy: true, reject_if: :all_blank

  validates :name, presence: true
end
