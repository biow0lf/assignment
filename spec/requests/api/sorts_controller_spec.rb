require "rails_helper"

describe Api::SortsController do
  describe "#create" do
    it "should schedule files sorting from upload" do
      upload = create(:upload)

      upload_file1 = create(:upload_file, :csv, upload: upload)

      upload_file2 = create(:upload_file, :json, upload: upload)

      post "/api/uploads/#{upload.id}/sorts", params: {
        sort: {
          order: "asc"
        },
        format: "json"
      }

      expect(response).to have_http_status(:ok)
    end
  end
end
