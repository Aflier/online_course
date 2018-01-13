module OnlineCourse
  # Contains areas to study
  class Area < ApplicationRecord
    has_many :subjects
  end
end
