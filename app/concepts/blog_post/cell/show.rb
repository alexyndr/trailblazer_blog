module BlogPost::Cell
  class Show < Trailblazer::Cell

    property :body
    property :title

    def created_at
      model.created_at.strftime("%d %B %Y")
    end

    def edit_link
      link_to 'Edit', edit_blog_post_path(model)
    end

    def delete_link
      link_to 'Delete', blog_post_path(model), method: :delete
    end

    def home_link
      link_to 'Back to posts list', blog_posts_path
    end
  end
end
