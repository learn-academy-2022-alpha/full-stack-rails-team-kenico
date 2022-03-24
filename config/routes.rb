Rails.application.routes.draw do
  get 'blogs' => 'blog#index', as 'new_blogs'
  get 'blogs/:id' => 'blog#show', as 'blog'
  root 'blog#index'
end
