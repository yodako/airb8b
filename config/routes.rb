Rails.application.routes.draw do
  get 'new_introduction' => 'rooms#new_introduction'
  resources :rooms
end
