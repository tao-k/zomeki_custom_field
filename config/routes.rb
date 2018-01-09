mod = "zomeki_custom_field"
ZomekiCMS::Application.routes.draw do
  ## admin
  scope "#{ZomekiCMS::ADMIN_URL_PREFIX}/#{mod}/c:concept", :module => mod, :as => mod do
    resources :content_base,
      :controller => 'admin/content/base'

    resources :content_settings, :only => [:index, :show, :edit, :update],
      :controller => 'admin/content/settings',
      :path       => ':content/content_settings'

  #  ## contents
    resources(:titles,
      :controller => 'admin/titles',
      :path       => ':content/titles')

    ## nodes
    resources :node_titles,
      :controller => 'admin/node/titles',
      :path       => ':parent/node_titles'

    ## pieces
    resources :piece_titles,
      :controller => 'admin/piece/titles'
  end


  ## public
  scope "_public/#{mod}", :module => mod, :as => '' do
    get 'node_books(/index.:format)' => 'public/node/books#index'
  end
end
ZomekiCustomField::Engine.routes.draw do
  root "#{mod}/contents#index"
  scope "/", :module => mod, :as => mod do
    resources :contents do
      collection do
        get :install
      end
    end
  end
end

