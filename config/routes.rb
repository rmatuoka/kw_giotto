KwGiotto::Application.routes.draw do

  resources "restrict"
  get "works/index"
  get "works/work"
  post "works/work"

  #get "releases/index"
  resources :releases do
    member do
      get "show_category"
      get "show_product"
    end
  end
  get "about_us/index"
  get "home/create"
  post "home/create"
  get "home/work"
  post "home/work"
    
  resources :products do
    member do
      get "show_category"
      get "show_product"
    end
  end
  resources :representatives
  resources :find_us
  resources :user_sessions
  resources :users
  resources :password_resets
  resources :atualizar

  
  root :to => "home#index"
  match 'register' => "users#new"
  match 'login' => 'user_sessions#new'  
  match 'logout' => 'user_sessions#destroy'  

end
ActionDispatch::Routing::Translator.translate_from_file('config/locales','i18n-routes.yml')

KwGiotto::Application.routes.draw do
  #Inicio do namespace Admin
  namespace(:admin){
    resources :categories do
      resources :products do
        resources :product_images
      end
      resources :product_catalogs
    end
    resources :about_images
    resources :static_contents
    resources :users do
      collection do
        get 'search'
      end
    end
    
    root :to => "static_contents#index"
  }
  #Final do namespace Admin
end  
  