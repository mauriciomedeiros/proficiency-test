class Course < ActiveRecord::Base
   validates :name, presence: true
   validates :name , length: {minimum:5, maximum: 45}
   validates :description , presence: true
   validates :description , length: {maximum: 45}
   validates :status , presence: true
end
