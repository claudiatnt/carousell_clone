Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#show'

  resources :users, controller: "users", only: [:create, :new, :index, :show, :destroy, :edit, :update]

  resource :session, only: [:create, :destroy, :new]

end
