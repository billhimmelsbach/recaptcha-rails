Rails.application.routes.draw do
  root to: "switts#index"
  resources :switts
end
