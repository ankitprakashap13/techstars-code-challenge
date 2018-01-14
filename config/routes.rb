Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies do
    post :add_founder,          on: :member
    post :add_category,         on: :member
  end
end
