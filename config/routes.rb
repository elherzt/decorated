Decorator::Application.routes.draw do

   root 'cars#index'
   resources :cars

end
