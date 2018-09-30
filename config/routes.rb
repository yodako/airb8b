Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
=======

  devise_for :users
  root 'pages#home'

>>>>>>> fujimasa1031/master
  get 'new_introduction' => 'rooms#new_introduction'
  resources :rooms
end
