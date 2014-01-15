Studentmanagementsystem::Application.routes.draw do
  resources :students
  resources :subjects
  resources :student_subjects
end
