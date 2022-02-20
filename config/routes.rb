Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'
  get 'users/new'
  get 'quizzes/opening'
  get 'quizzes/select'
  get 'quizzes/answer'
  get 'quizzes/result'
  get 'quizzes/badresult'
  get 'quizzes/new'
  get 'quizzes/:id', to: 'quizzes#show'
  get 'questions/new' 
  get 'genres/select' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
