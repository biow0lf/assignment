Rails.application.routes.draw do
  namespace :api do
    resources :uploads, only: [:show, :create, :index] do
      resources :upload_files, only: :create
    end
  end
end
