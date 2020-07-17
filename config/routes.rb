Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'

  resources :articles do
    resources :comments
  end
  resources :tags

  resources :authors

  resources :author_sessions, only: %i[new create destroy]

  get 'login' => 'author_session#new'
  get 'logout' => 'author_session#destroy'
end
