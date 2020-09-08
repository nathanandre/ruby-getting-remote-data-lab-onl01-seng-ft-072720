require 'json'
require 'open-uri'
require 'Net/http'

class GetRequester
    attr_accessor :url 

    def initialize(url)
        @url = url 
    end

    def get_response_body
        Net::HTTP.get_response(URI.parse(url)).body
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end 
end 

