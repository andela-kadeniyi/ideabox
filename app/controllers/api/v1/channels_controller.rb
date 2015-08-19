module Api
 module V1
  class ChannelsController < ApplicationController
   def index
    @channels = Channel.all
    render json: @channels
   end

   def new
    @channel = Channel.new
   end

   def create
    @channel = Channel.new(channel_params)
    if @channel.save
     render json: @channel
    end
   end

   def show
    @channel = Channel.find(params[:id])
    render json: @channel
   end

   def destroy
    @channel = Channel.find(params[:id])
    @channel.destroy
    response = {status: 200, body: 'channel deleted successfully'}
    render json: response.to_json
   end

    private
    def channel_params
     params.permit(:name, :purpose)
    end
  end
 end
end
