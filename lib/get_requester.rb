require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    attr_accessor :url

    def initialize url
        @url = url
    end
    
    def get_response_body
        # binding.pry
        uri = URI.parse(self.url)
        # binding.pry
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(self.get_response_body)
        # data
    end

end
