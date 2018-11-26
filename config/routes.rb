Rails.application.routes.draw do
root "home#index"
get "/cart", to: "home#cart"
get "/product/:id", to: "home#show"
  devise_for :users
end