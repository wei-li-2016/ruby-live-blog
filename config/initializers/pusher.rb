# config/initializers/pusher.rb
require 'pusher'

Pusher.app_id = '730466'
Pusher.key = 'ae6616df0482eaf6c2f4'
Pusher.secret = 'c554c295341acc25df3a'
Pusher.cluster = 'us3'
Pusher.logger = Rails.logger
Pusher.encrypted = true