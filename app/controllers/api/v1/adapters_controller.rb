class Api::V1::AdaptersController < ApplicationController

    def getFlyByData
        lat = params[:lat].to_f.ceil
        lon = params[:lon].to_f + 1
        # api does not work if you pass it zero. To figure out
        @response = HTTParty.get("http://api.open-notify.org/iss-pass.json?lat=#{lat}&lon=#{lon}")
        render json: @response
    end

end
