Rails.application.routes.draw do

  root "static_pages#home"
  get "/welcome:user_name", to: "dynamic_pages#welcome"
  get "/team", to: "static_pages#team"
  get "/home", to: "static_pages#home"

  get "/contact", to: "static_pages#contact"
  
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  resources :gossips
  # Defines the root path route ("/")
  # root "posts#index"
end
