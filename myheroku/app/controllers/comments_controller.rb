class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])
    @comments = @post.comments
    respond_to do |format|
    	format.html {redirect_to @post}
	format.js
     end
end
def index
@post = Post.find(params[:post_id])
@comment=@post.comments
respond_to do |format|
    	format.html {redirect_to @post}
	format.js
     end
end
def destroy
	@post = Post.find(params[:post_id])
	@comment = @post.comments.find(params[:id])
	@comment.destroy
	 respond_to do |format|
    	format.html {redirect_to @post}
	format.js { render :layout=>false }

     end	
end

end
