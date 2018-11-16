Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/index',to: 'dogs#index'
  
  
  get '/', to: 'pages#home', as: 'home'
  get '/team', to: 'pages#team', as: 'team'
  get '/about', to: 'pages#about', as: 'about'

  get  '/signup',  to: 'dogs#new', as: 'signup'
  post '/signup',  to: 'dogs#create'

  get    '/login',   to: 'sessions#new', as: 'login'
  post   '/login',   to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

end
