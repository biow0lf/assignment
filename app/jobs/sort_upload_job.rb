class SortUploadJob < ActiveJob::Base
  queue_as :default

  def perform(upload_id)
    SortUploads.new(upload_id).sort
  end
end
