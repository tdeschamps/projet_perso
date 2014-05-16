require 'twitter'

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "716E81rxabyhi1hMdRYV9noLH"
  config.consumer_secret     = "8nNd27zEBnHWO3AqcKCQDSSHbXz0fZEJZP39I6NlKrpZ5VD2l0"
  config.access_token        = "292397662-YbER2UMLxrzZpbjpXlYt19bReXwRrAyZSbxWkBJ1"
  config.access_token_secret = "CZrIzGg8L9vuRCSNylfJ08WaAIku7icoaDL8zLNzzDZmr"
end

topics = ["yolo"]
client.filter(:track => topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
  puts object.user.user_name if object.is_a?(Twitter::Tweet)
end

#client.search("@dailyshopwindow RT", :result_type => "recent").take(100).collect do |tweet|
 # puts "#{tweet.user.screen_name}: #{tweet.text}"
#end
#:geocode => "48.8567,2.3508,10mi",