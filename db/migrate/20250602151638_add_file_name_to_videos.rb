class AddFileNameToVideos < ActiveRecord::Migration[7.2]
  def change
    add_column :videos, :file_name, :string
  end
end
