class PostController < ApplicationController
  def create
  end

  def store
    # upload image to cloudinary
    @image = Cloudinary::Uploader.upload(params[:media])
    # create a new post object and save to db
    @post = Post.new({:title => params[:title], :body => params[:body], :author => params[:author], :media => @image['secure_url']})
    @post.save
    #triger an event with pusher

    redirect_to('/')
  end
end
