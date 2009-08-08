ActionController::Routing::Routes.draw do |map|
  
  map.root :controller => 'posts'
  
  map.signin   '/signin',   :controller => 'user_sessions', :action => 'new'
  map.signout  '/signout',  :controller => 'user_sessions', :action => 'destroy'
  
  map.resources :users, :has_many => [:posts, :categories, :pages]
  map.resources :posts, :has_many => :comments, :has_one  => :user 
  map.resources :pages,                         :has_one  => :user 
  map.resources :categories
  map.resources :options
  map.resources :user_sessions
    
  map.rss_feed    '/feed',          :controller => 'posts', :action => 'index', :format => 'rss'
  map.feed        '/feed.:format',  :controller => 'posts', :action => 'index'
  map.short_item  ':post_name',     :controller => 'posts', :action => 'show'
  
end
