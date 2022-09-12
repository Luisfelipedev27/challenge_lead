Rails.application.routes.draw do
  resources :user_informations
  devise_for :users
  authenticated :user do 
    root "user_informations#new", as: :authenticated_root
  end
  root 'pages#home'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
