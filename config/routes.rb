Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
  
  root 'rooms#index'
  resources :rooms

  get 'new_introduction' => 'rooms#new_introduction'

end
