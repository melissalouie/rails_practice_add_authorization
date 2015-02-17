Rails.application.routes.draw do
  root to: "pages#index"
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  resources :clubs
  get 'club', to: 'login'
  resources :students
end
