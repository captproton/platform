class PostsController < ApplicationController
    before_action :set_post, only: %i[ show ]

  # GET /posts/1 or /posts/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

end
