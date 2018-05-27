Rails.application.routes.draw do
  resources :porfolios

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  
  root 'pages#home', as: :home
end
