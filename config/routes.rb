Rails.application.routes.draw do
  root to: 'home#index'
  get '/home/admin' => 'home#admin'

  resources :ingredients

  resources :categories do
    resources :ingredients
  end

  resources :locations
end
