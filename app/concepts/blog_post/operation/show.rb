class BlogPost::Show < Trailblazer::Operation
  step Model(BlogPost, :find_by)
end
