Rails.application.routes.draw do

root 'volunteam#index'

resources :users
resources :events

resources :sessions, only: [:create, :destroy]
match '/signout', to: 'sessions#destroy', via: 'delete'
match '/signin', to: 'sessions#create', via: 'post'
get '/logout' => 'sessions#destroy'

end
