Rails.application.routes.draw do
  resources :sticks  do
    collection do
      get 'top'
    end
  end

  root to: 'tops#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
