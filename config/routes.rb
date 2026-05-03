Rails.application.routes.draw do
  root "pages#home"
  
  # Esto crea automáticamente las rutas correctas para index y show
  resources :events, only: [:index, :show]
  resources :categories, only: [:index, :show]
end