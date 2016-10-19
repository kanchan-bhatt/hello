Rails.application.routes.draw do
  get 'messages/new'

get 'cont', to: 'messages#new', as: 'cont'
  post 'cont', to: 'messages#create'

 
  

  

  resources :reports, :counterandcustoms, :source_reports, 
            :requestfordemos, :contact_us,  :import_files,
             :loginpage, :export_file, :uploads, :library_accounts,
             :reports_masters, :accounts, :platforms, :faqs, :about, :sessions,
             :account_platforms, :platform_reports, :account_platform_reports

   
  get 'users/page'

 
  root 'users#index'
  get 'users/example'

 

  resources :users do
    resources :microposts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
