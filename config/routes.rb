Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

	root "booklists#index"
    resources :booklists do
     	resource :comments, only:[:create, :destroy]
  	end
end
