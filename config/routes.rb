Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout

  resources :user do
    get 'retire'
  end

  resources :events do
    resources :tickets
  end
end
