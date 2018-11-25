Rails.application.routes.draw do

	resources :articles

	namespace :articles do
	  root  'articles#index'
	end

	post "authorize" => "articles#authorize"
	get "authorization", to: "articles#authorization", as: "authorization"
	get "list", to: "articles#list", as: "list"
	post "content", to: "articles#content", as: "content"
	post "logout", to: "articles#logout", as: "logout"
	get "figure", to: "top#figure", as: "figure"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	root "top#index"
end
