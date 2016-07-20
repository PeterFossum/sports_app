Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  # Setting up a Root Route
  root 'static_pages#home'

end
