Rails.application.routes.draw do
 resources :books

 root 'books#index'

 get 'search', to: "search#catalog"
 post 'search', to: "search#catalog"
 get 'search/ajax', to: "search#catalog_ajax"

 get 'welcome', to: "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
