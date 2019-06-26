Rails.application.routes.draw do
  
  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  
    resources :users, only: [:new, :create]

end
