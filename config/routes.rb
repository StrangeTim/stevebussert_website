Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :categories do
    resources :repositories, except: [:index]
  end
  resources :posts do
    resources :comments, except: [:index]
  end
  resources 'user', only: [:show]

  get "/admin" => "admins#index", as: 'admin'
  patch "/admin/:id" => "admins#update"
end
