Rails.application.routes.draw do

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  devise_for :users, controllers: {
           		:registrations => "users/registrations"
        	}
  resources :users
  root to: redirect("graphiql")
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
