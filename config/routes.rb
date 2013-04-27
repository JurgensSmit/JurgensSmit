JurgensSmit::Application.routes.draw do
  resources :blogs


root :to => "home#index"

  resources :blogs

get "about/index", :id => "about"
 match "about" => "about#index"

get "home/index", :id => "home"
match "home" => "home#index"

match 'contact' => 'contact#new', :as => 'contact', :via => :get
match 'contact' => 'contact#create', :as => 'contact', :via => :post
end
