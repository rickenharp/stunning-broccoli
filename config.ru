# frozen_string_literal: true

require './app'
require 'sidekiq/web'

run Rack::URLMap.new(
  '/' => MyApp,
  '/sidekiq' => Sidekiq::Web
)
