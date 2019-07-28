Rails.application.routes.draw do
  namespace 'v1' do
    resources :todos
    resources :posts
    resources :tasks
  end
end