require_relative "config/environment"

require "faker"
require "csv"

CSV.open("file.csv", "wb") do |csv|
  10000.times do |t|
    csv << [(Time.zone.now + t.minutes).iso8601, "#{ Faker::Quote.matz }"]
  end
end
