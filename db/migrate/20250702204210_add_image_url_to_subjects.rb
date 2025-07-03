class AddImageUrlToSubjects < ActiveRecord::Migration[7.2]
  def change
    add_column :subjects, :image_url, :string
  end
end
