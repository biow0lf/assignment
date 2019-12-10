class Upload < ApplicationRecord
  has_many :upload_files, dependent: :destroy

  has_one_attached :output_file
end
