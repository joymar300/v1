Rails.application.routes.draw do

  get 'cursos/index'
  get 'areas/index'
  devise_for :users
  root to: 'home#index'
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  resources :cursos
  resources :areas do 
    resources :cursos, module: :areas
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
