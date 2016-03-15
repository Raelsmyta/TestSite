Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  get 'products/index'

Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "welcome#index"
end
end
