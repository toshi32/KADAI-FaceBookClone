module PictureBlogsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_blogs_path
    elsif action_name == 'edit'
      picture_blog_path
    end
  end
end
