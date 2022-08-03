Rails.application.routes.draw do
  get 'users/profile'
 devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

   get '/u/:id', to: 'users#profile', as: 'user'
  resources :portfolios
  
  root to: 'pages#home'
  get 'about_silicon-mali',  to: 'pages#about'
  get 'silicon-mali_contact', to: 'pages#contact'
  resources :blogs

   resources :blogs do
    member do
      get :toggle_status
    end
  end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
