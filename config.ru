require './app'
require 'sidekiq/web'

run Rack::URLMap.new(
    '/' => MyApp,
    '/sidekiq' => Sidekiq::Web
)