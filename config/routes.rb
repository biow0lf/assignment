Rails.application.routes.draw do
  namespace :api do
    resources :uploads, only: [:show, :create, :index]

    resource :upload_files, only: :create
  end
end
