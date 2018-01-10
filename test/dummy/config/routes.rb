Rails.application.routes.draw do
  resources :users
  mount OnlineCourse::Engine => "/online_course", as: :online_course
  root to: 'users#index'
end
