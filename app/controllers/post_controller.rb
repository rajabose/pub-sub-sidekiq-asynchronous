class PostController < ApplicationController
  include Wisper::Publisher
  skip_before_action :verify_authenticity_token
  # ...
  def create
    @post = Post.create(params.permit(:content))
    if @post.present?
      # Publish event about post creation for any interested listeners
      # @post.subscribe(FeedListener, async: true)
      broadcast(:post_create)
      render json: { post: @post },status: :created
    else 
      # Publish event about post error for any interested listeners
      publish(:post_errors, @post)
      render json: {error: "unable to save post"}, status: :bad_request
    end
  end
end
