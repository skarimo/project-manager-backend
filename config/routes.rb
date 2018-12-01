Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    post 'auth/login', to: 'users#login'
    post 'auth/register', to: 'users#register'
    post 'authorize_token', to: 'users#authorize_token'

    #employee routes

    #manager routes

  end



end
