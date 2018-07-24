Rails.application.routes.draw do
  match '*all', to: proc { [204, {}, ['']] }, via: :options
  resources :users
  resources :journals
  resources :guidedmeditations
  resources :breathingexercises
  resources :coldshowers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
