Rails.application.routes.draw do
	root "blogs#all_blogs"
	get "archive" => "blogs#archive"

	# Resources for Blogs
  	resources :blogs

  	# Devise for Admin Login
  	devise_for :admins,
	path: '', path_names: { sign_in: 'login'}
end
