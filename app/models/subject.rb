

# app/models/subject.rb
class Subject < ApplicationRecord
  has_many :subject_verses
  has_many :verses, through: :subject_verses
end



class Subject < ApplicationRecord
  has_many :verses, dependent: :destroy
end
