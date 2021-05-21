Rails.application.routes.draw do
  #resources :prendas
  #resources :guardarropas
  resources :atuendos
  
  root to: 'home#index'
  
  resources :guardarropas do
    resources :prendas
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
