# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :products
      resources :purchases, only: [:create]
      resources :carts do
        collection do
          post :add_to_cart
        end
      end
    end
  end
end
