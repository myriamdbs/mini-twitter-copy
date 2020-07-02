class TweetcallJob < ApplicationJob
  queue_as :default

  def perform(keyword)
    client_setup.search("#{keyword.word}", result_type: "recent").take(3).collect do |tweet|
      Tweet.create(content: tweet.text, keyword_id: keyword.id)
    end
  end

  def client_setup
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["YOUR_CONSUMER_KEY"]
      config.consumer_secret     = ENV["YOUR_CONSUMER_SECRET"]
      config.access_token        = ENV["YOUR_ACCESS_TOKEN"]
      config.access_token_secret = ENV["YOUR_ACCESS_SECRET"]
    end
  end
end
