Rails.application.routes.draw do
  
  resources :crafts do
    resources :supplies
  end
  
end
