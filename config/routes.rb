Rails.application.routes.draw do
  get 'search/create'

  get 'home/inicio'
  resources :users
  resources :pruebas
  resources :cotizacions
  resources :departamentos
  resources :proyectos
  
  root to: 'sessions#new'
  get 'extra/cotizacion'
  get 'extra/detalle'

  get 'datos/personales'
  get 'sessions/new'
  get 'menu/servicio'
  get 'menu/nosotros'
  get 'departamentos/prueba'
  get 'home/inicio'

  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
