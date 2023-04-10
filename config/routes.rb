Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'application#hello'

  get 'goodbye', to: 'application#goodbye'

  get 'extra', to: 'application#extra'

  get 'ex_route', to: 'application#example', defaults: { format: :html }
  get 'ex_route.json', to: 'application#example', defaults: { format: :json } 

end
