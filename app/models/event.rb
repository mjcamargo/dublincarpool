

class Event
require 'rest-client'
require 'json'
    def events(q)
        url = 'http://api.openweathermap.org/data/2.5/weather'
        language = 'b6acddde16561dc4a5136ec2376d7831'
        resp = RestClient.get "#{url}?q=#{q}&units=metric&APPID=#{language}"
        resp = JSON.parse(resp.body)
    end
end