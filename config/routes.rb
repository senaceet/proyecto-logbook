Rails.application.routes.draw do
  root 'sign_ing#signIn'
  resources :usuarios
  
  get 'recuperar', to: 'recover_account#recover'
  get 'dashboard', to: 'dashboard#dash'
end
