module BlogPost::Cell
  class New < Trailblazer::Cell
    include ActionView::RecordIdentifier                 # for work with form
    include SimpleForm::ActionViewExtensions::FormHelper # for use simple_for in new view

    def home_link
      link_to 'Back to posts list', blog_posts_path
    end
  end
end
