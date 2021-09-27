Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portafolios
  get 'angular-items', to: 'portafolios#angular' 
  #get 'portafolio/:id', to: 'portafolio#show', as:'portafolio_show'

  # Home Page
  #get 'pages/home'  
  root to: 'pages#home'

  #get 'pages/about'
  get 'about', to: 'pages#about'

  get 'pages/contact'

  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
