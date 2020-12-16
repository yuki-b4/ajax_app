#コントローラーを設定

class PostsController < ApplicationController

  def index
     @posts = Post.all.order(id: "DESC")
    # @like = "僕のすきなものは、コーヒーです。"
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

end


