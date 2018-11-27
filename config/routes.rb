Rails.application.routes.draw do
  resources :items, only: [:new, :create, :edit, :update, :index, :destroy]
root "home#index"
get "/cart", to: "home#cart"
get "/profile", to: "home#profile"
get "/admin", to: "home#admin"
get "/product/:id", to: "home#show"
post "/addtocart", to: "home#addtocart"
post "/checkout", to: "home#checkout"
get "/favoris", to: "home#favoris"
  devise_for :users
resources :charges
post "/newadmin", to: "home#newadmin"
end