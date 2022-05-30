Rails.application.routes.draw do
  #get 'home/index'
  root 'home#index'

  get 'punto2/modp'
  post 'punto2/modp'

  resources :detalles
  resources :multa
  resources :prestamos
  resources :usuarios
  resources :libros
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
