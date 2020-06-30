class PostsController < ApplicationController
  include PostsHelper
  def new
    @post = Post.new
    @user = User.all
  end

  def create
    @post = Post.new(post_params)
    puts params[:post]
    if @post.save
      flash[:success] = 'post successfully created'
      redirect_to @post
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comment.post_id = @post.id
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:success] = 'Updated was successfully'
      redirect_to @post
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end
end
