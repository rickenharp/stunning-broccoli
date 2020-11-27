require 'bundler/setup'
require 'sinatra/base'
require_relative 'worker'

class MyApp < Sinatra::Application
  get '/' do
    erb :index
  end

  post '/say' do
    @text = params['text']
    Worker::Talker.perform_async(@text)
    erb :say
  end
end

