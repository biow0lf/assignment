class Api::UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def show
    @upload = Upload.find(params[:id])
  end

  def create
    @upload = Upload.create!(resource_params)
  end

  private

  def resource_params
    params.require(:upload).permit(:name)
  end
end
