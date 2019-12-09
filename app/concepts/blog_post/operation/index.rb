class BlogPost::Index < Trailblazer::Operation
  step :model

  def model(options, *)
    options['model'] = BlogPost.order(updated_at: :desc)
  end
end
