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

<<<<<<< HEAD
  resources :purchase_historys, only: [:new, :create, :update]
    get  "/search" => "cds#search", as: "search"
    #post "/search" => "cds#search", as: "search"
=======
  resources :purchase_histories, only: [:new, :create, :update]

    post "/search" => "cds#search", as: "search"
>>>>>>> d0aef4ceae26d9029264f7a29ce279fb2a097daf
    post "/event_search" => "events#event_search", as: "event_search"
    get "/cart_item" => "cart_items#show", as: "cart_item_buy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
