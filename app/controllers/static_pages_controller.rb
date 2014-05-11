class StaticPagesController < ApplicationController

  def index
    images_arry = Dir.glob('app/assets/images/carousel_images/*')
    @images = images_arry.map do |i|
      File.basename(i)
    end

    @events=Event.all


  end

  def forms
    @forms = Forms.all
  end

  def badges
    @badges=Badges.all
  end

 end
