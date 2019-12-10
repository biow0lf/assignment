class UploadFile < ApplicationRecord
  has_one_attached :file
end
