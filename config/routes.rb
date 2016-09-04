Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :categories do
    resources :repositories, except: [:index]
  end
  resources :posts do
    resources :comments, only: [:new, :create, :destroy]
  end
  resources 'user', only: [:show]

  get"/fire-mountain" => "pages#firemountain"
  get "/admin" => "admins#index", as: 'admin'
  patch "/admin/:id" => "admins#update"

  resources :references, except: [:show, :edit, :update]
end
