json.collection do
  json.array! @uploads do |upload|
    json.id upload.id
    json.name upload.name
  end
end
