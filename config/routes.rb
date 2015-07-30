Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/home/admin' => 'home#admin'

  resources :ingredients
  resources :categories
end
