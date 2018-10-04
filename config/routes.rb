Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
<<<<<<< HEAD

  root 'rooms#index'
  get 'new_introduction' => 'rooms#new_introduction'
  get 'serch_room' => 'rooms#serch'

  resources :rooms

=======
  
  root 'rooms#index'
  resources :rooms

  get 'new_introduction' => 'rooms#new_introduction'
>>>>>>> fujimasa1031/master

end
