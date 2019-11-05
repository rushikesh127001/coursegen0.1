Rails.application.routes.draw do
  namespace :course do
    get 'steps/show'
    get 'steps/update'
  end
  resources :courses, only: [:new, :create, :show, :index] do
    resources :steps, only: [:show, :update], controller: 'course/steps'
  end
  
  root to: 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
