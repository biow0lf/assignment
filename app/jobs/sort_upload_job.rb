class SortUploadJob < ActiveJob::Base
  queue_as :default

  def perform(upload_id)
  end
end
