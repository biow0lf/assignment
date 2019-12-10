class AddUploadsOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :order, :string
  end
end
