Rails.application.routes.draw do


	resources :articles
	post "authorize" => "articles#authorize"
	post "list", to: "articles#list", as: "list"
	get "list", to: "articles#list", as: "list_get"
	post "content", to: "articles#content", as: "content"
	post "filter", to: "articles#filter", as: "filter"
	post "logout", to: "articles#logout", as: "logout"
	get "figure", to: "top#figure", as: "figure_get"
	post "figure", to: "top#figure", as: "figure"
	get "notes", to: "top#notes", as: "notes_get"
	post "notes", to: "top#notes", as: "notes"
	get "login", to: "articles#login", as: "login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	root "articles#index"
	post "void", to: "articles#void", as: "void"
	post "top", to: "articles#root", as: "top"
end
