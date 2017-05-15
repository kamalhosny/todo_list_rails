Rails.application.routes.draw do
  resources :items, except: [:new, :edit, :show]
  # root "item#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
