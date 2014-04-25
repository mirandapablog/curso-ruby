# daily_motion.rb
#
# DailyMotion.get_video('123456')
require 'httparty'

module DailyMotion

  API_URL = 'https://api.dailymotion.com'

  def self.get_video( video_id )
    response = HTTParty.get( API_URL + '/video/' + video_id )
    ActiveSupport::JSON.decode(response.body)
  end

end
