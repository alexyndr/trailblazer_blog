# frozen_string_literal: true

class BlogPostsController < ApplicationController
  def new
    run BlogPost::Create::Present

    render cell(BlogPost::Cell::New, @form), layout: false
  end

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

  def edit
    run BlogPost::Update::Present

    render cell(BlogPost::Cell::Edit, @form), layout: false
  end

  def update
    run BlogPost::Update do |result|
      flash[:notice] = "#{result['model'].title} has ben saved"
      return redirect_to blog_posts_path(result['model'])
    end

    flash[:notice] = "Error #{model.default}"
    render cell(BlogPost::Cell::Edit, @form), layout: false
  end
end
