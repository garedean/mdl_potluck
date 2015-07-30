Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/home/admin' => 'home#admin'

  resources :categories do
    resources :ingredients
  end
end
