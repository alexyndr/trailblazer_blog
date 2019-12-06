# frozen_string_literal: true

#:new
class BlogPostsController < ApplicationController
  def new
    run BlogPost::Create::Present

    render cell(BlogPost::Cell::New, @form), layout: false
  end
  #:new end

  def create
    run BlogPost::Create do |_result|
      return redirect_to blog_posts_path
    end

    render cell(BlogPost::Cell::New, @form), layout: false
  end

  def index
    run BlogPost::Index

    render cell(BlogPost::Cell::Index, result['model']), layout: false
  end

  def show
    run BlogPost::Show

    render cell(BlogPost::Cell::Show, result['model']), layout: false
  end
end
