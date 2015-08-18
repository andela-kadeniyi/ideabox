class IdeasController < ApplicationController
  def create
   @idea = Idea.new(idea_params)
   if @idea.save
    render json: @idea
   end
  end

  def show
   @idea = Idea.find(params[:id])
   render json: @idea
  end

  def index
   @ideas = Idea.all
   render json: @ideas
  end

  def destroy
   @idea = Idea.find(params[:id])
   @idea.destroy
   response = {status: 200, body: 'idea deleted successfully'}
   render json: response.to_json
  end

  def update
   @idea = Idea.find(params[:id])
   @idea.update(idea_params)
   render json: @idea

  end

  private
  def idea_params
   params.permit(:title, :content, :channel_id)
  end
end
