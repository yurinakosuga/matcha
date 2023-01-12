Rails.application.routes.draw do
  
  
  namespace :admin do
    get 'shops/index'
    get 'shops/edit'
  end
# 顧客用
# URL /customers/sign_in ...
devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
root to: 'public/homes#top'
get '/about' => 'public/homes#about'
get '/users/unsubscribe' => 'public/users#unsubscribe'
patch '/users/withdraw' => 'public/users#withdraw' 
  scope module: :public do
      resources :users, only: [:show, :edit, :update]
      resources :diaries, only: [:new, :show, :index, :edit, :create, :update, :destroy]
      resources :searchs, only: [:index ]
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
   resources :diaries, only: [:show ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

