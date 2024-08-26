Rails.application.routes.draw do
  resources :orders, only: %i[new create] do
    collection do
      post :confirm
      get :complete
    end
  end
end
