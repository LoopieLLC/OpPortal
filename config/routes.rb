Rails.application.routes.draw do
  get 'password_resets/create'
  get 'password_resets/edit'
  get 'password_resets/update'
  get 'user_sessions/new'
  # welcome page is root
  root 'welcome_page#welcome'
  get '/welcome', to: 'welcome_page#welcome'

  # static pages
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  get '/driver_guidelines', to: 'static_pages#driver_guidelines'
  get '/washer_guidelines', to: 'static_pages#washer_guidelines'

  # Generic user routes
  get '/users/:id', to: 'users#show', as: 'user'

  # driver controller actions
  get '/new_driver', to: 'users#new_driver'
  post '/new_driver', to: 'users#create_driver'

  # loads
  get '/loads', to: 'loads#index', as: 'loads'
  get '/loads/:id', to: 'loads#show', as: 'show_load'
  get '/loads/new', to: 'loads#new', as: 'new_load'

  # washer controller actions
  get '/new_washer', to: 'users#new_washer'
  post '/new_washer', to: 'users#create_washer'
  get '/washers/:id/show_drivers', to: 'drivers#index', as: 'drivers'

  #sessions
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  # resources
  resources :user_sessions
  resources :loads
  resources :users
  resources :drivers
  resources :washers
  resources :admins
  resources :password_resets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
