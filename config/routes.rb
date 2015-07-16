Rails.application.routes.draw do
  
  devise_for :users
  resources :posts do
    resources :comments
  end

  root "posts#index"

  # this make is so we can go to /about page instead of /pages/about
  get '/about', to: 'pages#about' 
end