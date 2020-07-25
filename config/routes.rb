Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'login', to: 'sign_ing#signIn'

  get 'registro', to: 'signup#signUp'
end
