json.collection do
  json.array! @uploads do |upload|
    json.id upload.id
    json.name upload.name
    json.generated upload.generated
    json.parsing_now upload.parsing_now
  end
end
