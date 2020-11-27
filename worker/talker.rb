require 'sidekiq'

module Worker
  class Talker
    include Sidekiq::Worker
  
    def perform(text='hello')
      `say #{text}`
    end
  end
end
