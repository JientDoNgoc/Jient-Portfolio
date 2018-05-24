Rails.application.routes.draw do
  resources :porfolios
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :blogs
  
end
