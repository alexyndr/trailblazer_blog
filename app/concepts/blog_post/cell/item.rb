# require "cell/partial"

module BlogPost::Cell
  class Item < Trailblazer::Cell
    # include Partial

    def title_link
      link_to model.title, model unless model.nil?
    end

    property :body
    property :title

    def created_at
      model.created_at.strftime("%d %B %Y")
    end

    def first
      model == BlogPost.first
    end
  end
end
