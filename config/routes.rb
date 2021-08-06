Rails.application.routes.draw do
  resources :magazines
  resources :winemakers
  resources :strains
  resources :wines
  devise_for :users, :controller => { registrations: 'registration'}

  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
