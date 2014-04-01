Crm::Application.routes.draw do
 root 'leads#index'

  resources :leads do
    resources :comments
  end

  resources :users
  resources :accounts
  resources :landings
  resources :statuses
end

