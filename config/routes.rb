Rails.application.routes.draw do
  resources :drivers
  resources :admins
  resources :washers
  resources :loads
  get 'welcome_page/welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome_page#welcome'
end
