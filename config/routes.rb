Rails.application.routes.draw do
  resources :portfolios
  
  root to: 'pages#home'
  get 'about_silicon-mali',  to: 'pages#about'
  get 'silicon-mali_contact', to: 'pages#contact'
  resources :blogs

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

   resources :blogs do
    member do
      get :toggle_status
    end
  end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
