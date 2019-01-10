Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
      resources :user_ingredients
      resources :chef_recipes do
           resources :recipe_ingredients
           resources :recipe_instructions
      end
  end

  resources :chef_recipes do
      resources :recipe_ingredients
      resources :recipe_instructions
  end
  resources :recipe_ingredients
  resources :user_ingredients
  resources :recipe_instructions
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/profile", to: "users#profile"
end
