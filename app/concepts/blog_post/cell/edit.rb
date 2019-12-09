module BlogPost::Cell
  class Edit < Trailblazer::Cell
    include SimpleForm::ActionViewExtensions::FormHelper # for use simple_for in new view

    def show
      render :new
    end

    def delete_link
      link_to 'Delete', blog_post_path(model), method: :delete
    end

    def home_link
      link_to 'Back to posts list', blog_posts_path
    end
  end
end
