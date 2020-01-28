Rails.application.routes.draw do
  # resources :portfolios
  # get 'portfolios/index'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  # get 'portfolios/index'
  resources :blogs
  get 'portfolios/index' => 'portfolios#index'
  resources :portfolios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
