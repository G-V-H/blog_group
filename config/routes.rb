Rails.application.routes.draw do
    devise_for :users
    
    get "/", to: 'pages#home'

    get '/blogs', to: 'blogs#index', as: 'blog'
    post '/blogs', to: 'blogs#create'
    get '/blogs/new', to: 'blogs#new', as: 'new_blog'
    get '/blogs/:id', to: 'blogs#show', as: 'blogs'
    put '/blogs/:id', to: 'blogs#update'
    patch '/blogs/:id', to: 'blogs#update'
    delete '/blogs/:id', to: 'blogs#destroy', as: 'destroy_blog'
    get '/blogs/:id/edit', to: 'blogs#edit', as: 'edit_blog'
    
  end
