Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  delete 'doses/:id', to: "doses#destroy", as: :delete_dose
  root to: 'cocktails#index'
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
end
