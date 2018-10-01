Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
=======

  devise_for :users
<<<<<<< HEAD
  root 'pages#home'

>>>>>>> fujimasa1031/master
=======
  root 'rooms#index'
>>>>>>> fujimasa1031/master
  get 'new_introduction' => 'rooms#new_introduction'
  resources :rooms
end
