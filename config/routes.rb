Rails.application.routes.draw do
  get 'blogs' => 'blog#index', as: 'blogs'
  get 'blogs/new' => 'blog#new', as: 'new_blog'
  post 'blogs' => 'blog#create'
  get 'blogs/:id' => 'blog#show', as: 'blog'
  get 'blogs/:id/edit' => 'blog#edit', as: 'edit_blog'
  root 'blog#index'
end

