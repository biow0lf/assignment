class UploadFile < ApplicationRecord
  belongs_to :upload

  has_one_attached :file
end
