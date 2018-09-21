Rails.application.routes.draw do
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  get '/driver_guidelines', to: 'static_pages#driver_guidelines'
  get '/washer_guidelines', to: 'static_pages#washer_guidelines'
  get '/welcome', to: 'welcome_page#welcome'

  resources :drivers
  resources :loads
  resources :admins
  resources :washers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome_page#welcome'
end
