#コントローラーを設定

class PostsController < ApplicationController

  def index
     @posts = Post.all
    # @like = "僕のすきなものは、コーヒーです。"
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end

end


