class Api::UploadFilesController < ApplicationController
  def create
    @upload = Upload.find(params[:upload_id])
    @upload_file = @upload.upload_files.build(file_format: resource_params[:file_format])
    @upload_file.file.attach(resource_params[:file])
    @upload_file.save!
  end

  private

  def resource_params
    params.require(:upload_file).permit(:file, :file_format)
  end
end
