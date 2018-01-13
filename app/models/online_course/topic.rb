module OnlineCourse
  class Topic < ApplicationRecord
    belongs_to :subject
  end
end
