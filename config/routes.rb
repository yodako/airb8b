Rails.application.routes.draw do

  devise_for :users
  root 'rooms#index'
  resources :rooms do
    collection do
      get :reservation_confirm
      get :new_introduction
    end
  end
end
