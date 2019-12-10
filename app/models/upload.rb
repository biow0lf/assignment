class Upload < ApplicationRecord
  has_many :upload_files, dependent: :destroy
end
