Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
      resources :adapters, only: [:index]
      get '/adapters/:lat/:lon', to: 'adapters#getFlyByData', constraints: { lat: /[0-z\.-]+/, lon: /[0-z\.-]+/}

    end
  end
end
