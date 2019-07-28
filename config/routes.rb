Rails.application.routes.draw do
  get '/', to: 'application#index'

  namespace 'v1' do
    resources :todos
    resources :posts
    resources :tasks
  end
end