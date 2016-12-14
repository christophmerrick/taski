Rails.application.routes.draw do
  

  devise_for :users
  get "contact", to: "pages#contact"
  
  get "about", to: "pages#about"

  get "error", to: "pages#error"
  
  get "blog", to: redirect("http://jordanhudgens.com")

  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end


  resources :projects
  
  root 'pages#home'

  get "*path", to: redirect("/error")

end
  



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
