Rails.application.routes.draw do

  root to: "pages#home"

  devise_for :users

  namespace :api do
    resources :circle_of_fulfillment
    resources :goals do
      resources :habits
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
