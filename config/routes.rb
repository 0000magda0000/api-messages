Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :messages, only: [ :index, :show, :update, :create, :destroy ]
    end
  end
end
