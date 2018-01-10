OnlineCourse::Engine.routes.draw do

  resources :chapters

  root to: 'books#index'
end
