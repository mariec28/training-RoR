Rails.application.routes.draw do
  resources :portafolios
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
