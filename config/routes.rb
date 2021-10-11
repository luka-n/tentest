Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/tournaments", to: "tournaments#new"
  post "/tournaments", to: "tournaments#create"
  root to: "tournaments#new"
end
