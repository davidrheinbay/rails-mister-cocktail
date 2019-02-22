Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  get 'cocktails/newdesign', to: 'cocktails#newdesign'
  resources :ingredients
  resources :cocktails do
    resources :doses, only: %i[new create show destroy]
  end
end
