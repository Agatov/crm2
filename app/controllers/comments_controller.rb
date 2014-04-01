class CommentsController < ApplicationController

  before_filter :find_lead, only: :create
  before_filter :find_comment, only: [:update, :destroy]

  def create
    @lead.add_comment params[:comment]
    redirect_to :back
  end

  def update
    @comment.update_attributes params[:comment]
    redirect_to :back
  end

  def destroy
    @comment.destroy
    redirect_to :back
  end

  private

  def find_lead
    @lead = Lead.find params[:lead_id]
  end

  def find_comment
    @comment = Comment.find params[:id]
  end
end
