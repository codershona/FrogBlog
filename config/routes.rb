Rails.application.routes.draw do

	root to: 'blog/posts#index'

	scope module: 'blog' do
	get 'about' => 'pages#about', as: :about 
	get 'blog' => 'pages#blog', as: :blog 
	get 'contact' => 'pages#contact', as: :contact
		resources :posts
	end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
