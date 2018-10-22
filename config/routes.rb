# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :portfolios, except: [:show]  # removed show path and re-route
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show' # need to change the index action too, adding 'as' define new prefix
  get 'angular-items', to: 'portfolios#angular'

  get 'about-me', to: 'pages#about' # can change name to any because it have path net to it
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: "pages#home" # change the home page to page/home
end
