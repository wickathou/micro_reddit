class CommentsController < ApplicationController
  include CommentsHelper
  def create
    @comment = Comment.new(comment_params)
    flash[:notice] = if @comment.save
                       'comment created created!'
                     else
                       'Something went wrong'
                     end
    redirect_to post_path(@comment.post)
  end
end
