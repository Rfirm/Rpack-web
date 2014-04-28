RpackWeb::Application.routes.draw do
  get "homes/index"
  get "homes/signup"
  get "homes/login"
  get "homes/about"
  root 'homes#index'
  match '/signup', to: 'homes#signup', via:'get'
  match '/login', to: 'homes#login', via:'get'
  match '/about', to: 'homes#about', via:'get'
end
