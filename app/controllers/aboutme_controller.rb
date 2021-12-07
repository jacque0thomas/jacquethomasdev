class AboutmeController < ApplicationController
  def about
    @blurb = Blurb.find(1)
  end

  def show
    @blurb = Blurb.find(1)
  end
end
