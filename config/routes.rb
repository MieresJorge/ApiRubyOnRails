Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :personajes
      resources :detallespersonajes
      resources :peliculas
    end
  end        
end
