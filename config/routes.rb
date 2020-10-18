Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :update, :destroy] do
    resources :timers
  end
  post '/users/signin', to: 'users#signin'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
