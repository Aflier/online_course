OnlineCourse::Engine.routes.draw do

  resources :topics
  resources :subjects do
    resources :topics
  end
  resources :areas do
    resources :subjects
  end

  root to: 'books#index'
end
