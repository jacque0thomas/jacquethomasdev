Rails.application.routes.draw do
  get 'aboutme/about-me'
  root "homepage#home"

  
  get "/aboutme", to: "aboutme#about-me"

  get "/homepage", to: "homepage#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
