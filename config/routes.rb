Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  resources :icecreams

  #root 'icecreams#index'
  root 'welcome#index'
end
