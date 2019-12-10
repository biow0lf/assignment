FactoryBot.define do
  factory :upload_file do
    upload

    trait :csv do
      file { Rack::Test::UploadedFile.new(Rails.root.join('file.csv'), 'text/csv') }
    end

    trait :json do
      file { Rack::Test::UploadedFile.new(Rails.root.join('file.json'), 'application/json') }
    end
  end
end
