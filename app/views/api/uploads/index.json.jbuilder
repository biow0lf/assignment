json.collection do
  json.array! @uploads do |upload|
    json.id upload.id
    json.name upload.name
    json.generated upload.generated
    json.parsing_now upload.parsing_now
    json.output_file_url rails_blob_path(upload.output_file, disposition: "attachment")
  end
end
