class Api::SortsController < ApplicationController
  def create
    @upload = Upload.find(params[:upload_id])
    order = resource_params[:order] == "asc" ? "asc" : "desc"
    @upload.update!(generated: false, parsing_now: true, order: order)
    SortUploadJob.perform_later(@upload.id)
  end

  private

  def resource_params
    params.require(:sort).permit(:order)
  end
end
