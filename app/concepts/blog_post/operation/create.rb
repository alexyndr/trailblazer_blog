class BlogPost::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(BlogPost, :new)
    step Contract::Build(constant: BlogPost::Contract::Create)
  end

  step Nested(Present)
  step Contract::Validate(key: :blog_post)
  step Contract::Persist()
  step :notify

  def notify(options, model:, **)
    options['result.notify'] = Rails.logger.info("New blog post #{model.title}")
  end
end
