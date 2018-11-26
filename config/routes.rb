Rails.application.routes.draw do
root "home#index"
get "/cart", to: "home#cart"
get "/profile", to: "home#profile"
get "/product/:id", to: "home#show"
post "/addtocart", to: "home#addtocart"
post "/addtocart", to: "home#addtocart"
post "/addtocart", to: "home#addtocart"
post "/checkout", to: "home#checkout"
  devise_for :users
end