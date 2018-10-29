Rails.application.routes.draw do
  # welcome page is root
  root 'welcome_page#welcome'
  get '/welcome', to: 'welcome_page#welcome'

  # static pages
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  get '/driver_guidelines', to: 'static_pages#driver_guidelines'
  get '/washer_guidelines', to: 'static_pages#washer_guidelines'
  get '/approve', to: 'users#approve', as: 'approve'

  # driver controller actions
  get '/new_driver', to: 'drivers#new'
  post '/new_driver', to: 'drivers#create'

  # washer controller actions
  get '/new_washer', to: 'washers#new'
  post '/new_washer', to: 'washers#create'

  get '/new_user', to: 'users#new'
  post '/new_user',  to: 'users#create'

  #sessions
  get 'washer_session/new'
  get 'driver_session/new'
  get 'admin_session/new'

  get '/washer_login', to: 'washer_session#new'
  post '/washer_login', to: 'washer_session#create'
  delete '/washer_logout', to: 'washer_session#destroy'

  get '/driver_login', to: 'driver_session#new'
  post '/driver_login', to: 'driver_session#create'
  delete '/driver_logout', to: 'driver_session#destroy'

  get '/admin_login', to: 'admin_session#new'
  post '/admin_login', to: 'admin_session#create'
  delete '/admin_logout', to: 'admin_session#destroy'

  # resources

  resources :loads
  resources :users do
    member do
      get :approve
      get :deny
    end
  end
  resources :drivers
  resources :washers
  resources :admins do
    resources :users
  end 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
