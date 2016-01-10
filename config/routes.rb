Rails.application.routes.draw do
   root "students#index"
   resources :students, only: [:new, :create, :destroy, :edit, :update]

   resources :courses, only: [:index,:new, :create, :destroy, :edit, :update]

   resources :classrooms, only: [:index,:new, :create, :destroy, :edit, :update]
end
