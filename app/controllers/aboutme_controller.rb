class AboutmeController < ApplicationController
  def about
    @blurb = Blurb.find(1)
  end

  #needed?
  def show
    @blurb = Blurb.find(1)
  end
end
