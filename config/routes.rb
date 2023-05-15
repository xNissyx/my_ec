# frozen_string_literal: true

Rails.application.routes.draw do
  get 'pages/home'
  devise_for :customers, controllers: {
   sessions: "customer/sessions",
   registrations: "customer/registrations"
 }

  devise_for :admins, controllers: {
  sessions: "admin/sessions"
}

  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
