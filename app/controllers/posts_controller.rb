class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).page(params[:page])
    respond_to do |format|
      format.html
    end
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find_by(id:params[:id])
  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def create
    @post = Post.new({content:params[:content],title:params[:title]})
    respond_to do |format|
      if @post.save
        format.html { redirect_to action:'index', notice: 'Article was successfully created.' }
        format.json { render :index, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @post = Post.find_by(id:params[:id])
    @post.attributes = {content:params[:content],title:params[:title]}
    respond_to do |format|
      if @post.save
        format.html { redirect_to action:"index", notice: 'Article was successfully updated.' }
        format.json { render :index, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find_by(id:params[:id])
    @post.destroy
    respond_to do |format|
      format.html { redirect_to action:"index" }
      format.json { head :no_content }
    end
  end
end
