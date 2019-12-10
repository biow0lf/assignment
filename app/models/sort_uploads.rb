require "csv"

class SortUploads
  attr_reader :upload_id, :data

  def initialize(upload_id)
    @upload_id = upload_id
    @data = []
  end

  def sort
    parse_files

    @data.sort_by! { |object| object[:time] }

    @data.reverse! if upload.order == "desc"
  end

  private

  def upload
    @upload ||= Upload.find(upload_id)
  end

  def parse_files
    upload.upload_files.each do |upload_file|
      parse_file(upload_file)
    end
  end

  def parse_file(upload_file)
    case upload_file.file_format
    when "csv"
      parse_csv_file(upload_file)
    when "json"
      parse_json_file(upload_file)
    else
      raise "Unknown file format"
    end
  end

  def parse_csv_file(upload_file)
    upload_file.file.blob.open do |file|
      CSV.parse(File.read(file), headers: false).each do |row|
        @data << { time: Time.zone.parse(row[0]), text: row[1] }
      end
    end
  end

  def parse_json_file(upload_file)
    upload_file.file.blob.open do |file|
      json = JSON.parse(File.read(file))
      json.each do |row|
        @data << { time: Time.zone.parse(row["time"]), text: row["text"] }
      end
    end
  end
end
