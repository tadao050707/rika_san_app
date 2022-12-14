Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  root 'top#index'
  resource :users, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :care_users
  resources :healths
end
