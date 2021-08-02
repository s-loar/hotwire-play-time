Rails.application.routes.draw do
  resources :users do
    collection do
      post :search, to: "users/search#index"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
