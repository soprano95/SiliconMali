Rails.application.routes.draw do
  resources :portfolios
  
  root to: 'pages#home'
  get 'about_silicon-mali',  to: 'pages#about'
  get 'silicon-mali_contact', to: 'pages#contact'
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
