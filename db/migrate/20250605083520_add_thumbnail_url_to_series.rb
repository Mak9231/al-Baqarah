class AddThumbnailUrlToSeries < ActiveRecord::Migration[7.2]
  def change
    add_column :series, :thumbnail_url, :string
  end
end
