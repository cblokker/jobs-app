Rails.application.routes.draw do
  root 'jobs#index'

  # sessions routes
  # resources :sessions, only: [:new, :create, :destroy]
  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :jobs, only: [:index, :new, :create]
  resources :job_applications, only: [:index, :create]
end
