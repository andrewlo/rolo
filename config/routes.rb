Rails.application.routes.draw do
  resources :guests do
    post 'invite', on: :member
    get 'rsvp', on: :member
    post 'rsvp_update', on: :member
  end

  root 'guests#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
