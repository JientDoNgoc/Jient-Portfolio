Rails.application.routes.draw do
  devise_for :users
  
  resources :porfolios, except: [:show]
  get 'angular-items', to: 'porfolios#angular'
  
  get 'porfolio/:id', to: 'porfolios#show', as: :'porfolio_show'
    
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do 
    member do 
      get :toggle_status
    end
  end
  
  root 'pages#home', as: :home
end
