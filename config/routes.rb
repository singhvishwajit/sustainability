Rails.application.routes.draw do
  resources :innovations
  get 'pages/about'
  get 'pages/contact'
  get 'pages/privacy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "innovations#home"
end
