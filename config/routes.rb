Rails.application.routes.draw do
  resource :session do
    get :login
    get :logout
    get :redirect
    get :index
  end
end
