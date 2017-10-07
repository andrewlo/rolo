Rails.application.routes.draw do
  resources :guests

  root 'guests#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
