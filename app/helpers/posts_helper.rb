module PostsHelper
  def check_s(_user, post)
    post.user.email if user_signed_in?
  end

  def check_e(_user, current_user, post)
    link_to 'Edit', edit_post_path(post) if user_signed_in? && current_user.id == post.user_id
  end

  def check_d(_user, current_user, post)
    return unless user_signed_in? && current_user.id == post.user_id

    link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }
  end
end
