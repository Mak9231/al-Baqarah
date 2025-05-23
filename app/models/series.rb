# class Series < ApplicationRecord
#   # Ajoute cette ligne si ce n’est pas déjà fait
#   validates :title, :description, presence: true
# end


class Series < ApplicationRecord
  has_one_attached :video
  has_one_attached :image
end
