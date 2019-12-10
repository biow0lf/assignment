require "rails_helper"

describe Api::UploadsController do
  describe "#create" do
    it "should create new upload" do
      post "/api/uploads", params: {
        upload: {
          name: "Name"
        },
        format: "json"
      }

      expect(response).to have_http_status(:ok)
    end
  end

  describe "#show" do
    it "should show upload by id" do
      upload = create(:upload)

      get "/api/uploads/#{upload.id}", params: { format: "json" }

      expect(response).to have_http_status(:ok)
    end
  end

  describe "#index" do
    it "should show all uploads" do
      create(:upload)

      get "/api/uploads", params: { format: "json" }

      expect(response).to have_http_status(:ok)
    end
  end
end
