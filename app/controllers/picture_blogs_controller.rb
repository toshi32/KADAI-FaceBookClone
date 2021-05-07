class PictureBlogsController < ApplicationController
  before_action :set_picture_blog, only: [:show, :edit, :update, :destroy]
  def index
    @picture_blogs = PictureBlog.all
  end

  def new
    @picture_blog = PictureBlog.new
  end

  def create
    @picture_blog = PictureBlog.new(blog_params)
    if params[:back]
      render :new
    end
    if redirect_to picture_blogs_path, notice: '投稿を作成しました！！'
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @picture_blog.update(picture_blog_params)
      redirect_to picture_blogs_path, notice: "投稿を編集しました！！"
    else
      render :new
    end
  end

  def destroy
    @picture_blog.destroy
    redirect_to picture_blogs_path, notice:"投稿を削除しました！！"
  end

  def confirm
    @picture_blog = PictureBlog.new(picture_blog_params)
    render :new if @picture_blog.invalid?
  end

end

private

def picture_blog_params
  params.require(:picture_blog).permit(:title, :content)
end

def set_picture_blog
  @picture_blog = PictureBlog.find(params[:id])
end