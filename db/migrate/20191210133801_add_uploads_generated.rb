class AddUploadsGenerated < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :generated, :boolean, default: false
  end
end
