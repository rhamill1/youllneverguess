Rails.application.routes.draw do

  get 'static_pages/home'

  get 'static_pages/submission_success'

  get 'static_pages/faq'

  root to: 'static_pages#home'
  get '/', to: 'static_pages#home'

  resources :ideas

end
