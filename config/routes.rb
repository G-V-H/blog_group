Rails.application.routes.draw do
    devise_for :users
    root "home#index"

    get '/blogs', to: 'blogs#index', as: 'blogs'
    post '/blogs', to: 'blogs#create'
    get '/blogs/new', to: 'blogs#new', as: 'new_blog'
    get '/blogs/:id', to: 'blogs', as: 'blog'
    put '/blogs/:id', to: 'blogs#update'
    patch '/blogs/:id', to: 'blogs#update'
    delete '/blogs/:id', to: 'blogs#destroy', as: 'destroy_blog'  get '/blogs/:id/edit', to: 'blogs#edit', as: 'edit_blog'
    get '/blogs/:id/edit', to: 'blogs#edit', as: 'edit_blog'
    
  end
