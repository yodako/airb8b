Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
  root 'rooms#index'
  resources :rooms do
    collection do
      get :new_introduction
      get :serch
      get :reservation_confirm
    end
    resources :reservations do
      collection do
        post :reservation_confirm
      end
    end
  end
  
end
