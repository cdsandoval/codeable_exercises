Rails.application.routes.draw do
  resources :repartos
  resources :actors
  resources :peliculas
  resources :casetes
  root 'welcome#index'
  get 'welcome', to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
