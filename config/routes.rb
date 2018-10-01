Rails.application.routes.draw do

  devise_for :users
  root 'rooms#index'
  get 'new_introduction' => 'rooms#new_introduction'
  get 'serch_room' => 'rooms#serch'
  resources :rooms
end
