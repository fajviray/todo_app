Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index'

  devise_for :members

  resources :projects do
  	resources :tasks
  end

  devise_scope :member do

    match '/logout', to: 'devise/sessions#destroy', via: [:delete]

    unauthenticated :member do
      root to: 'devise/sessions#new'
    end

  end

  root to: 'projects#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
