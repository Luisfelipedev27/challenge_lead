Rails.application.routes.draw do
  devise_for :users
  authenticated :user do 
    root "pages#contact_book", as: :authenticated_root
  end
  root 'pages#home'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
