class HomeController < ApplicationController
  def index
      @posts =Post.all #작성된 테이블 전체 볼수있다.
  end

  def new
       @posts = Post.all
  end

  def create
    @post = Post.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save
    redirect_to '/home/new' 
  end
  
   def delete
    @post = Post.find(params[:post_id])
    @post.destroy
    redirect_to '/home/new'
   end
   
   def edit
     @post = Post.find(params[:post_id])
   end
   
   def update
     @post = Post.find(params[:post_id])
     @post.title = params[:post_title]
     @post.content = params[:post_content]
     @post.save
     redirect_to '/home/new'
   end
end
