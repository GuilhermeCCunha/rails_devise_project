Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admin/sessions',
    registrations: 'admin/registrations'
  }

  devise_for :users, controllers: {
    sessions:  'users/sessions'  
  }
        
  root 'pages#home'
  get 'pages/users'
  post 'pages/ban/:id', to: 'pages#ban_user', as: 'pages_ban_user'
  post 'pages/unban/:id', to: 'pages#unban_user', as: 'pages_unban_user'
  get 'pages/admin', to: 'pages#admin', as: 'pages_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
 
