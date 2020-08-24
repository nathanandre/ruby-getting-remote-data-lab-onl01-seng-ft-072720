require 'json'
require 'open-uri'
require 'Net/http'

class GetRequester
    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        #send GET request, returns the body of the response
        # uri = URI.parse(url)
        # response = Net::HTTP.get_response(uri)
        # response.body
        Net::HTTP.get_response(URI.parse(url)).body
    end

    def parse_json
        #use #get_response_body, send request return ruby hash of returned data
        JSON.parse(self.get_response_body)
    end

end
