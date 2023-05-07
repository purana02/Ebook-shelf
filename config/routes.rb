Rails.application.routes.draw do
# 会員用ログイン、新規登録
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_scope :customer do
    post 'customers/guest_sign_in', to: 'public/sessions#guest_sign_in'
end

# 管理者用ログイン
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
# 会員側
scope module: :public do
  root :to =>"homes#top"
  get "about" =>"homes#about"
 #会員関連
  resource :customer, only: [:show, :edit, :update] do
    get "confirm_deleted" => "customers#confirm_deleted"
    patch "is_deleted" => "customers#is_deleted"
    resources :billings, except: [:show]
    resources :reviews, only: [:index, :show]
    resources :favorites, only: [:index]
  end
 #会員の所持している漫画
  resources :having_comics, only: [:new, :create]
 #漫画関連
  resources :comics, only: [:index, :show, :new, :create] do
    resources :reviews, except: [:index,:show] do
      get "confirm_reported" => "comments#confirm_reported"
      patch "is_reported" => "comments#is_reported"
      resources :comments, only: [:new, :create]
    end
    resource :favorites, only: [:create, :destroy]
  end
end

#管理者側
namespace :admin do
  root :to =>"homes#top"
 #レビュー関連
  get "/reviews/is_reported" => "reviews#is_reported"
  resource :reviews, only: [:index]
 #漫画関連
  resources :comics, only: [:index, :show] do
    resources :reviews, only: [:show, :update, :destroy]
  end
 #サイト関連
  resources :sites, except: [:new, :show]
 #ジャンル関連
  resources :genres, except: [:new, :show]
 #会員関連
  resources :customers, except: [:new, :create, :destroy]
 #コメント関連
  resources :comments, except: [:edit, :new, :create]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
