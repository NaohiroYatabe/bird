Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'
  get 'users/new'
  get 'quizzes/opening'
  get 'quizzes/select/:genre_id', to: 'quizzes#select'
  get 'quizzes/answer'
  get 'quizzes/result/:id/:answer', to: 'quizzes#result'
  get 'quizzes/new'
  get 'quizzes/:id', to: 'quizzes#show'
  get 'genres/select'
  post 'quizzes/create',  to: 'quizzes#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
