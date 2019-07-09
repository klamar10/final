Rails.application.routes.draw do
root to: 'home#inicio'
  resources :departamentos
  resources :proyectos
  resources :users

  get 'extra/cotizacion'
  get 'datos/personales'
  get 'sessions/new'
  get 'menu/servicio'
  get 'menu/nosotros'
  get 'departamentos/prueba'


  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
