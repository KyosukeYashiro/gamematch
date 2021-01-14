Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'home#top'
  get 'user/:id/index', to:'user#index'
  get 'login_form', to:'session#login_form'
  get 'signup', to:'session#signup'
  post 'signup/create', to:'session#create'
  post "login" => "session#login"
  get '/mypage', to:'session#mypage'
  post 'logout', to:'session#logout'
  get 'mypage/edit', to:'session#edit'
  post 'update', to:'session#update'
end