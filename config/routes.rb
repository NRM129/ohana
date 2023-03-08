Rails.application.routes.draw do
  devise_for :users
  get 'notes/index'
  root to: "notes#index"
  resources :notes do
    resources :comments, only: :create
  end
  resources :users, only: [:index, :show]

  # collection do
  #   match 'search' => 'notes#index', via: [:get, :post], as: :search
  # end
  
end
