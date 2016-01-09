Rails.application.routes.draw do
   root "students#index"
   resources :students, only: [:new, :create, :destroy, :edit]

   resources :courses, only: [:index,:new, :create, :destroy, :edit]
end
