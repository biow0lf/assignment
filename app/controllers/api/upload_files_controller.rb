class Api::UploadFilesController < ApplicationController
  def create
    @upload = Upload.find(params[:upload_id])
    @upload_file = @upload.upload_files.build
    @upload_file.file.attach(resource_params[:file])
    @upload_file.save!
  end

  private

  def resource_params
    params.require(:upload_file).permit(:file)
  end
end
