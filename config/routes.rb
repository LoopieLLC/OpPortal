Rails.application.routes.draw do
  get 'static_pages/about'
  get 'static_pages/help'
  get 'static_pages/contact'
  get 'static_pages/driver_guidelines'
  get 'static_pages/washer_guidelines'
  get 'static_pages/about'
  get 'static_pages/help'
  get 'static_pages/contact'
  get 'static_pages/driver_guidlines'
  get 'static_pages/washer_guidlines'
  get 'static_pages/DriverGuidlines'
  get 'static_pages/WasherGuidlines'
  resources :drivers
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'

  resources :loads
  resources :admins
  resources :washers

  get 'welcome_page/welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome_page#welcome'
end
