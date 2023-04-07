Rails.application.routes.draw do
  root "articles#index"

  delete '/articles', to: 'articles#destroy_all', as: 'delete_all_articles'

  resources :articles
end
