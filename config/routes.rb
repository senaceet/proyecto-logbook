Rails.application.routes.draw do
  root 'sign_ing#signIn'
  resources :usuarios 
end
