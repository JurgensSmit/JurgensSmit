JurgensSmit::Application.routes.draw do

root :to => "home#index"

get "blog/index", :id => "blog"
 match "blog" => "blog#index"

get "home/index", :id => "home"
match "home" => "home#index"

match 'contact' => 'contact#new', :as => 'contact', :via => :get
match 'contact' => 'contact#create', :as => 'contact', :via => :post
end
