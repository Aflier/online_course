# ApplicationController that inherits from Parent Applicant
class OnlineCourse::ApplicationController < ::ActionController::Base
  protect_from_forgery with: :exception
end
