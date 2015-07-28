Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/home/store' => 'home#store'
  
  resources :ingredients
  resources :categories 
  resources :locations 

end
