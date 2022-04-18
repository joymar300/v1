Rails.application.routes.draw do
  get 'ficha/index'
  get 'ficha/new'
  get 'ficha/edit'

  devise_for :users
  root to: 'home#index'
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  resources :cursos
  resources :areas do 
    resources :cursos, module: :areas
  end

  resources :fichas do
     resources :curso_fichas, module: :fichas
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
