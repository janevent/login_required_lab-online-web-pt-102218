Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'

  get '/show' => 'secrets#show'

  #resources :secrets, only: [:show]

  get '/destroy' => 'sessions#destroy'

  resources :sessions, only: [:new, :create]
end
