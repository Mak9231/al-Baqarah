class AddFileNameToSeries < ActiveRecord::Migration[7.2]
  def change
    add_column :series, :file_name, :string
  end
end
