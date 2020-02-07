Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  # get 'portfolios/index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  #get 'pages/about'
  #get 'pages/contact'
  # get 'portfolios/index'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  #get 'portfolios/index' => 'portfolios#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end



