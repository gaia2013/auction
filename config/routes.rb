Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items
  # resources :items, only: [:index, :show]
  # resources :items, except: :destroy

  # get '/items' => 'items#index'
  # post '/items'      => 'items#create'
  # get '/items/new'   =>  'items#new'
  # # :id はパラメータなので、なんでも当てはまってしまうので:idは後に書く
  # get '/items/:id' => 'items#show'
  # get '/items/:id/edit' => 'items#edit'
  # patch '/items/:id' => 'items#update'
  # delete '/items/:id' => 'items#destroy'
  #
  # #同じアドレスでもHTTPメソッドで区別している

end
