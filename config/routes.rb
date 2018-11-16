Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'dogs#home', as: 'home'
  get '/index',to: 'dogs#index', as: 'dog'

  get  '/signup',  to: 'dogs#new', as: 'signup'
  post '/signup',  to: 'dogs#create'

  get    '/login',   to: 'sessions#new', as: 'login'
  post   '/login',   to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

end
