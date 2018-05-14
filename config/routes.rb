Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :my_mails do
    collection do
      get "inbox"
      get "sendbox"
      get "draft"
      get "read"
      get "unread"
    end
  end


end
