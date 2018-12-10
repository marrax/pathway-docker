Rails.application.routes.draw do
  match '/', to:  'pages#home', :via => :get

  match '/home', to:  'pages#home', :via => :get
  
  match '/homenew' =>  'pages#new', :as => 'pages', :via => :get

  match '/homecreate' =>  'pages#create', :via => :post

  match '/news', to:  'news#articles', :via => :get

  match '/events', to:  'pages#whatson', :via => :get

  match '/guestbook', to:  'comments#guestbook', :via => :get

  match '/rooms', to:  'pages#rooms', :via => :get

  match '/booking', to:  'pages#booking', :via => :get

  match '/breakfast', to:  'pages#breakfast', :via => :get

  match '/directions', to:  'pages#directions', :via => :get
  match '/terms', to:  'pages#terms', :via => :get
  match '/sitemap', to:  'pages#sitemap', :via => :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#end
end
