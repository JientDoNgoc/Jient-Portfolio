Rails.application.routes.draw do
  devise_for :users, path: '', path_names:
  {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  }
  
  resources :porfolios, except: [:show] do 
    put :sort , on: :collection
  end     
  get 'angular-items', to: 'porfolios#angular'
  
  get 'porfolio/:id', to: 'porfolios#show', as: :'porfolio_show'
    
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'
  
  resources :blogs do 
    member do 
      get :toggle_status
    end
  end
  
  mount ActionCable.server => '/cable'
  
  root 'pages#home', as: :home
end
