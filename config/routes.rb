Rails.application.routes.draw do
  resources :products
  root 'home#index'

  devise_for :users
  resources :users	

	get '/:category_name', to: 'categories#show'

end
