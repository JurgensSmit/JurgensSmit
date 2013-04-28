JurgensSmit::Application.routes.draw do


resources :blogs

root :to => "home#index"

get "blog/index", :id => "blog"
match "blog" => "blog#index"

get "about/index", :id => "about"
 match "about" => "about#index"

get "home/index", :id => "home"
match "home" => "home#index"

match 'contact' => 'contact#new', :as => 'contact', :via => :get
match 'contact' => 'contact#create', :as => 'contact', :via => :post
end
