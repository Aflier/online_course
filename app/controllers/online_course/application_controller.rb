# ApplicationController that inherits from Parent Applicant
class OnlineCourse::ApplicationController < ::ApplicationController
  protect_from_forgery with: :exception
end
