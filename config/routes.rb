Rails.application.routes.draw do
  root :to => 'options#index'

  resources :options do
    resources :comments, only: [:new, :edit, :create, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
