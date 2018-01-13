module OnlineCourse
  class Subject < ApplicationRecord
    belongs_to :area
    has_many :topics
  end
end
