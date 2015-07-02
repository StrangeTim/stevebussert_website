Rails.application.routes.draw do
  root 'pages#home'
  resources :categories do
    resources :repositories, except: [:index]
  end
end
