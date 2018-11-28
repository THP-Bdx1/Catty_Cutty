Rails.application.routes.draw do
  resources :items, only: [:new, :create, :edit, :update, :index, :destroy]
root "home#index"
get "/cart", to: "home#cart"
get "/profile", to: "home#profile"
get "/admin", to: "home#admin"
get "/product/:id", to: "home#show"
get "/review/:orderid/:item_id", to: "home#reviewpage"
post "/addtocart", to: "home#addtocart"
post "/profilepost", to: "home#profilepost"
post "/checkout", to: "home#checkout"
get "/favoris", to: "home#favoris"
  devise_for :users
resources :charges
post "/superpost", to: "home#superpost"
  get 'fav', to: "home#fav"
end
