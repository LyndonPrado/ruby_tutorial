class PagesController < ApplicationController
  def home
	@posts = Blog.all
	@skills = Skill.all
	@currentUser = current_user
  end

  def about
  end

  def contact
  end
end
