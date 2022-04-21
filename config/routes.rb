Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :images do
        get '/scores' ,to: 'scores#show'
        post '/scores/:name/:record' ,to: 'scores#create'
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
