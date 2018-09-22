Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # for forums
  root :to => 'home#index'
  mount SimpleDiscussion::Engine => "/forum"
end
