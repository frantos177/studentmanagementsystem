Studentmanagementsystem::Application.routes.draw do
  root to: "students#index"
  resources :students
  resources :subjects
  resources :student_subjects
end
