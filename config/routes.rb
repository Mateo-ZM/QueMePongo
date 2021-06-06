Rails.application.routes.draw do
  get '/users/new', to: redirect('/signup')
  get	'/signup', to:	'users#new'
  get '/users/:id', to: redirect('/profile')
  get	'/profile', to:	'users#show'		
  resources :users

  
  

  #get	'/users', to:	'users#index'	
  #post	'/users', to:	'users#create'	
  #get	'/users/:id', to:	'users#show'	
  #get	'/users/:id/edit', to:	'users#edit'	
  #put	'/users/:id', to:	'users#update'	
  #delete	'/users/:id', to:	'users#destroy'	
  
  #falta: 
  #signup
  #profile
  
  
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