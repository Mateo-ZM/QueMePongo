Rails.application.routes.draw do
  #resources :prendas
  #resources :guardarropas
  #resources :atuendos
  
  resources :guardarropas do
    resources :prendas
    resources :atuendos
  end

  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
