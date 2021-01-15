Rails.application.routes.draw do
  root 'welcome#home'


  get '/signin', to: 'session#new', as: 'signin'
  post '/signin', to: 'session#create'
  post 'logout', to: 'session#destroy', as: 'logout'
  delete '/logout', to: 'session#destroy'

  # get '/users/:id', to: 'users#show', as: 'user'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'

  resources :rides
  resources :attractions
  resources :users

  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
