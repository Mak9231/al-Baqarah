# class Video < ApplicationRecord
#   has_one_attached :file
# end


class Video < ApplicationRecord
  # plus besoin de Active Storage ici
  # supprime ou ignore `has_one_attached :file`

  def file_url
    "/videos/#{file_name}"
  end
end
