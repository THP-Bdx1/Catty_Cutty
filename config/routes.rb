Rails.application.routes.draw do
root "home#index"
get "/cart", to: "home#cart"
get "/product/:id", to: "home#show"
post "/product/:id", to: "home#addtocart"
  devise_for :users
end