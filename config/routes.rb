Rails.application.routes.draw do
  get 'keywords/index'
  root to: 'keywords#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :keywords, only: [:index, :show, :create, :destroy] do
    resources :tweets, only: [:create]
  end
end
