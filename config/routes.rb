Rails.application.routes.draw do
  resources :declarations do
    resources :entries
  end
end
