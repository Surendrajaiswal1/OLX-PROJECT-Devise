Rails.application.routes.draw do
  root 'buy_products#show_available_products'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
   #......................SELL_PRODUCT.................................
   resources :sell_products

   #.......................BUY_PRODUCT....................................
   resources :buy_products   do
   get 'show_available_products', on: :collection
   get 'show_data_category_wise',on: :collection
   get 'buy', on: :member
    end
   #.......................CATEGORY....................................
   resources :categories
end
