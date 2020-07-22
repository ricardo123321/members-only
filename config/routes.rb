Rails.application.routes.draw do
  devise_for :users, :controllers=> {registrations:'registrations'}
  resources :posts, only: [:new, :create, :index, :show, :edit]

  root "posts#index"
end
