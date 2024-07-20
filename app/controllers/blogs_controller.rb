class BlogsController < ApplicationController
    before_action :set_blog, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]

    def index
      @blogs = Blog.all
    end

    def show
    end

    def new
      @blog = Blog.new
    end

    def edit
    end

    def create
      @blog = current_user.blogs.build(blog_params)

      if @blog.save
        redirect_to @blog, notice: 'Blog was successfully created.'
      else
        render :new
      end
    end

    def update
      if @blog.update(blog_params)
        redirect_to @blog, notice: 'Blog was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @blog.destroy
      respond_to do |format|
        format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :description)
    end
  end
