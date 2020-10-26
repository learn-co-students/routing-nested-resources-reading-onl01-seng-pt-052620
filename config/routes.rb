Rails.application.routes.draw do
  resources :authors, only: [:show] do 
    resources :posts, only: [:show, :index]  #nested resource for posts 
  end 
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  root 'posts#index'
end

# get 'authors/:id/posts', to: 'authors#posts_index'
# get 'authors/:id/posts/:post_id', to: 'authors#post' 
