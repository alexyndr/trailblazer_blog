# frozen_string_literal: true

module BlogPost::Cell
  class Index < Trailblazer::Cell
    def total
      return 'No posts' if model.blank?
    end

    def create_link
      link_to 'Create new Post', new_blog_post_path
    end
  end
end
