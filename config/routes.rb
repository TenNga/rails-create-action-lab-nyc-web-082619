Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new, :create]
  get '/student/new', to: 'students#new', as: 'student_new'
  get '/student/:id', to: 'students#show', as: 'student'
  post '/student', to: 'students#create', as:'student_create'
end
