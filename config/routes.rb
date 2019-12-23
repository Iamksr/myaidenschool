Rails.application.routes.draw do
  resources :devisons
  resources :mystreams
  resources :members
  devise_for :users
  root "members#school"
  get 'school' => "members#school"
  get 'vips' => "members#vip"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
