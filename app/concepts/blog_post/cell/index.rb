# frozen_string_literal: true

module BlogPost::Cell
  class Index < Trailblazer::Cell
    def total
      return 'No posts' if model.blank?
    end
  end
end
