require "rails_helper"

describe Api::UploadFilesController do
  describe "#create" do
    it "should attach file to upload" do
      upload = create(:upload)

      post "/api/uploads/#{upload.id}/upload_files", params: {
        upload_file: {
          file: fixture_file_upload(Rails.root + 'file.csv', 'text/csv')
        }
      }

      expect(response).to have_http_status(:ok)
    end
  end
end