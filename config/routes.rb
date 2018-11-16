Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'dogs#home'

  get  '/signup',  to: 'dogs#new', as: 'signup'
  post '/signup',  to: 'dogs#create'


end
