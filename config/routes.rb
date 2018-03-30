Rails.application.routes.draw do
  get 'declarations/index'

  get 'declarations/show'

  get 'declarations/new'

  get 'declarations/create'

  get 'declarations/update'

  get 'declarations/edit'

  get 'declarations/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :declarations do
    resources :entries
  end
end
