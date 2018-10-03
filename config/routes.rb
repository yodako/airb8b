Rails.application.routes.draw do

  devise_for :users
  root 'rooms#index'
  get 'reservation_confirm' => 'rooms#reservation_confirm'
  get 'new_introduction' => 'rooms#new_introduction'
  resources :rooms
end
