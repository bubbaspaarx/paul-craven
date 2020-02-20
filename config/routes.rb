Rails.application.routes.draw do
  root to: 'pages#home'

  get 'blogs', to: 'pages#blogs'

  post 'message', to: 'messages#create', as: 'new_message'

  resources :sitemaps, :only => :show
  get "sitemap" => "sitemaps#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
