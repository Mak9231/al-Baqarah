class AddUrlToSeries < ActiveRecord::Migration[7.2]
  def change
    add_column :series, :url, :string
  end
end
