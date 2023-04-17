Rails.application.routes.draw do
  root "articles#index"

  delete '/articles', to: 'articles#destroy_all', as: 'delete_all_articles'

  resources :articles

  post 'game_results', to: 'articles#game_results'
  get 'game_results', to: 'articles#game_results'

  get 'manage_articles', to: 'articles#manage_articles'
  
  delete '/articles/:id', to: 'articles#destroy', as: 'delete_article'

  get 'about', to: 'articles#about'

  get 'testindex', to: 'articles#testindex'



end
