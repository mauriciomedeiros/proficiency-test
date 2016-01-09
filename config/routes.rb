Rails.application.routes.draw do
   root "students#index"
   resources :students, only: [:new, :create, :destroy]
end
