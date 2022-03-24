class BlogController < ApplicationController
    def index
        @blogs = Blog.all 
    end

    def show
        @blogs = Blog.find(params[:id])
    end

    def new
        @blogs = Blog.new
    end

    def create
        @blogs = Blog.create(blog_params)
        if @blogs.valid?
            redirect_to blogs_path
        else
            redirect_to new_blog_path
        end
    end

    def edit
        @blogs = Blog.find(params[:id])
    end

    def update
        @blogs = Blog.find(params[:id])
        @blogs.update(blog_params)
        if @blogs.valid?
            redirect_to blogs_path(@blogs)
        else
            redirect_to edit_blog_path
        end
    end
end

private
def blog_params
    params.require(:blog).permit(:title,:content)
end
