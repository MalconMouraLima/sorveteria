Rails.application.routes.draw do
  devise_for :users
  resources :icecreams

  root 'icecreams#index'
end
