Rails.application.routes.draw do
  resources :comparisons
  get 'welcome/index'
 
  # The priority is based upon order of creation:
  # first created -> highest priority.
  #
  # You can have the root of your site routed with "root"
  root 'welcome#index'
end