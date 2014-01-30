Crm::Application.routes.draw do
 root 'application#index'

  resources :leads, except: [:new, :edit]
end
