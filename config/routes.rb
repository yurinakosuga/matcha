Rails.application.routes.draw do
  
# 顧客用
# URL /customers/sign_in ...
devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
root to: 'public/homes#top'
get 'search_shop_names/search' => 'public/search_shop_names#search'

get 'search_shop_details/search' => 'public/search_shop_details#search'
post 'search_shop_details/search' => 'public/search_shop_details#search'

get 'search_diaries/search' => 'public/search_diaries#search'
post 'search_diaries/search' => 'public/search_diaries#search'

get '/users/unsubscribe' => 'public/users#unsubscribe'
patch '/users/withdraw' => 'public/users#withdraw' 

scope module: :public do
    resources :users, only: [:index, :show, :edit, :update] do
      scope module: :users do
        resources :diaries, only: :index
      end
    end
    resources :diaries, only: [:new, :show, :index, :edit, :create, :update, :destroy] do
      
       resources :comments, only: [:create, :destroy]
      
    end
    post '/users/guest_sign_in', to: 'users#guest_sign_in'
    resources :search_shop_names, only: [:index ]
    resources :search_shop_details, only: [:index ]
    
end
# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
#get 'admin' => 'admin/homes#top'
 namespace :admin do
   root to: 'homes#top'
   resources :genres, only: [:index, :create, :edit, :update, :destroy]
   resources :shops, only: [:index, :create, :edit, :update, :destroy]
   resources :users, only: [:index, :show, :edit, :update, :destroy]
   resources :diaries, only: [:show, :destroy ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

