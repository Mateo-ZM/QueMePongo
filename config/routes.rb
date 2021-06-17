Rails.application.routes.draw do
  
  resources :users, except: [:new, :edit, :show]
  get	'/signup', to:	'users#new'
  get	'/profile', to:	'users#show'
  get	'/profile/edit', to:	'users#edit', as:'edit_user'
  
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