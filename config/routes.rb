Rails.application.routes.draw do
  get 'blurbs/index'
  get 'aboutme/about'
  root "homepage#home"

  resources :blurbs
  get "/aboutme", to: "aboutme#about"

  get "/homepage", to: "homepage#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
