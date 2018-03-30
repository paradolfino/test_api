Rails.application.routes.draw do
  get 'entries/index'

  get 'entries/show'

  get 'entries/new'

  get 'entries/create'

  get 'entries/update'

  get 'entries/edit'

  get 'entries/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :declarations do
    resources :entries
  end
end
