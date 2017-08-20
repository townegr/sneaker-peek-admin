class TwitterService
  attr_reader :user

  def self.call(user)
    new(user).call()
  end

  def initialize(user)
    @user = user
  end

  private

  def call
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.secrets.twitter_api_key
      config.consumer_secret     = Rails.application.secrets.twitter_api_secret
      config.access_token        = user.token
      config.access_token_secret = user.secret
    end
  end
end