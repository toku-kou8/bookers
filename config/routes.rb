Rails.application.routes.draw do
  root to: 'books#top'
  get '/books' => 'books#index'
  post '/books' => 'books#create'
  get '/books/:id' => 'books#show', as: 'book'
  get '/books/:id/edit' => 'books#edit'
  patch '/books/:id/edit' => 'books#update', as: 'update_book'
  
  delete '/books' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
