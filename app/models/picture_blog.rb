class PictureBlog < ApplicationRecord
  belongs_to :user
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_picture_blogs_path
    elsif action_name == 'edit'
      blog_path
    end
  end
end
