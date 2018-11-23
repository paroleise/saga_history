Rails.application.routes.draw do

	resources :articles
	post "authorize" => "articles#authorize"
	get "authorization", to: "articles#authorization", as: "authorization"
	post "logout", to: "articles#logout", as: "logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	root "articles#index"
end
