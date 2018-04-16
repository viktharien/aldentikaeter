Rails.application.routes.draw do

    root 'users#index'
    get '/signup' => 'users#new'
    post '/signup' => 'users#create'
    resources :users
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
