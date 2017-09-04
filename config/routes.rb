Rails.application.routes.draw do

  root to: 'static_pages#home'
  get '/', to: 'static_pages#home'

  resources :ideas

  get 'static_pages/home'
  get 'static_pages/submission_success'
  get 'static_pages/faq'

end
