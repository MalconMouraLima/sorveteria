Rails.application.routes.draw do
  resources :icecreams

  root 'icecreams#index'
end
