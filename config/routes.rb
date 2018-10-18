# frozen_string_literal: true

Rails.application.routes.draw do
  resources :portfolios

  get 'about-me', to: 'pages#about' # can change name to any because it have path net to it
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: "pages#home" # change the home page to page/home
end
