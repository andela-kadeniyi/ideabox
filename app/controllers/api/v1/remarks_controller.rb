module Api
 module V1
  class RemarksController < ApplicationController
   def index
    @idea = Idea.find(params[:idea_id])
    @remarks = @idea.remarks
    render json: @remarks
   end

   def new
    @remark = Remark.new
   end

   def create
    @remark = Remark.new(remark_params)
    if @remark.save
     render json: @remark
    end
   end

   def show
    @remark = Remark.find(params[:id])
    render json: @remark
   end

   def destroy
    @remark = Remark.find(params[:id])
    @remark.destroy
    response = {status: 200, body: 'remark deleted successfully'}
    render json: response.to_json
   end

   private
   def remark_params
    params.permit(:body, :idea_id)
   end

  end
 end
end
