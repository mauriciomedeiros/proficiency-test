class Student < ActiveRecord::Base
   validates :name , presence: true
   validates :name , length: {minimum:5, maximum: 45}
   validates :register_number , presence: true
   validates :register_number , length: {maximum: 45}
   validates :status , presence: true
end
