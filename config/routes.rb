Rails.application.routes.draw do
  root 'sign_ing#signIn'

  #get 'login', to: 'sign_ing#signIn'
  resources :usuario 
end
