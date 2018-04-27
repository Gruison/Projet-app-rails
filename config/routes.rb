Rails.application.routes.draw do
  root'static_pages#home'
  get '/new', to: 'user_controller#new'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  get '/about_me', to: 'static_pages#about_me'
  get '/about_my_group', to: 'static_pages#about_my_group'
  post '/', to:'user_controller#create'
  get '/user_controller/:id', to: 'user_controller#show', as: 'user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
