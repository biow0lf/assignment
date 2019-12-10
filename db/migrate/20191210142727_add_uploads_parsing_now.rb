class AddUploadsParsingNow < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :parsing_now, :boolean, default: false
  end
end
