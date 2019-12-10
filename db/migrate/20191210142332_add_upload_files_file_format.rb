class AddUploadFilesFileFormat < ActiveRecord::Migration[6.0]
  def change
    add_column :upload_files, :file_format, :string
  end
end
