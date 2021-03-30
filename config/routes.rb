Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#index'
  
  get '/sign_up', to: 'users#new'
  # post '/sign_up', to: 'users#new'

  post '/sign_up', to: 'users#create'

  get '/posts', to: 'posts#index'

  # resources :users
  resources :posts
end

