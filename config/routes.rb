Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :update, :destroy] do
    resources :timers
    get '/daily', to: 'timers#daily'
    get '/weekly', to: 'timers#weekly'
    get '/monthly', to: 'timers#monthly'
    get '/categories', to: 'timers#categories'
  end
  post '/users/signin', to: 'users#signin'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
