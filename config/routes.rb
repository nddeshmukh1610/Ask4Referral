Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'pages/about'

  get 'pages/contact'

  get 'about', :to => 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :japprovals
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  resources :jobs
  resources :locations
  resources :genders
  resources :jtypes
  resources :modes
  resources :categories
  resources :pages
  get 'home/index'

 
  root 'jobs#index'

 
  ActiveAdmin.routes(self)
  get '*path', to: 'jobs#index'
end
