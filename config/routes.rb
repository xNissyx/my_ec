# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :customer do
    get "customers/confirm_withdraw"
    patch "customers/withdraw"
  end
  get "homes/top"

  devise_for :customers, skip: [:passwords], controllers: {
   sessions: "customer/sessions",
   registrations: "customer/registrations"
 }

  devise_for :admins, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

  root to: "homes#top"

  resources :customers do
    collection do
      get "confirm_withdraw"
      patch "withdraw"
    end
  end
  
  resources :recipes

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
