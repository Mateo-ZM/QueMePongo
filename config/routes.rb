Rails.application.routes.draw do
  resources :users
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  resources :guardarropas do
    resources :prendas
    resources :atuendos do
      get :rand
    end
  end

  root to: 'home#index'
  
end