Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'

  get '/users/new', to: 'users#new', as: 'new_users'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update', as: 'update_user'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  get '/posts/:id', to: 'posts#show', as: 'post'
  get '/cities', to: 'cities#index', as: 'cities'
  get '/cities/:city_name', to: 'cities#show', as: 'city'
  get '/cities/:city_name/posts/new', to: 'posts#new', as:'new_posts'
  post '/cities/:city_name/posts', to: 'posts#create'
  get '/posts/:id/edit', to:'posts#edit', as: 'edit_post'
  patch '/posts/:id', to: 'posts#update', as: 'update_post'
  delete 'posts/:id', to: 'posts#destroy', as: 'destroy_post'

  # show '/cities/:city_id/posts/:post_id', to: 'posts#show'
end
