Rails.application.routes.draw do
  root 'events#index'

  devise_for :users


  resources :users, only: [:show, :edit, :update, :destroy]
  resources :admins, only: [:show]
  resources :artists, only: [:create, :update, :destroy]
  resources :cart_items, only: [:show, :create, :destroy]
  resources :cds, only: [:index, :show, :edit, :create, :update, :destroy]
  resources :events, only: [:index, :show, :edit, :create, :update, :destroy] do
    resource :comments, only: [:create, :destroy]
    resource :asiatos, only: [:create, :destroy]
  end

  resources :purchase_historys, only: [:new, :create, :update]
    get  "/search" => "cds#search", as: "search"
    post "/event_search" => "events#event_search", as: "event_search"
    get "/cart_item" => "cart_items#show", as: "cart_item_buy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
