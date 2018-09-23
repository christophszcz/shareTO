Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # for forums
  root :to => 'home#index'

  get '/users/new' => 'users#new'
  post 'users/new/create' => 'users#create'

  get '/users/login' => 'sessions#new'
  post '/users/login/create' => 'sessions#create'
  delete '/users/logout' => 'sessions#destroy'

  get '/users/:user_id/edit' => 'users#edit', as: 'user_edit'
  patch '/users/:user_id/update' => 'users#update', as: 'user_update'

  get '/users/introduction' => 'users#introduction', as: 'user_introduction'
  get 'users/:user_id/items' => 'items#index', as: 'users_items'
  get 'users/:user_id/items/show/:id/' => 'items#show', as: 'item'
  get 'users/:user_id/items/new' => 'items#new', as: 'users_enter_item'
  post 'users/:user_id/items/create' => 'items#create', as: 'user_new_item'

  get 'users/item/success' => 'items#success', as: 'item_success'

  mount SimpleDiscussion::Engine => "/forum"

  namespace :api do
    namespace :v1 do
      resources :items, only: [:show]
    end
  end
end
