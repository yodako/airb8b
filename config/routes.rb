Rails.application.routes.draw do
  devise_for :users
  get 'new_introduction' => 'rooms#new_introduction'
  resources :rooms
end
