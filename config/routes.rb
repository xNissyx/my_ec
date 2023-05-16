# frozen_string_literal: true

Rails.application.routes.draw do

  get 'homes/top'

  devise_for :customers, skip: [:passwords], controllers: {
   sessions: "customer/sessions",
   registrations: "customer/registrations"
 }

  devise_for :admins, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

  root to: "homes#top"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end