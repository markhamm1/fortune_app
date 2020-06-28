class Api::FortunesController < ApplicationController
  def fortune_of_the_day
    @message = "Hello third time"
    
    fortunes = ["you'll be rich", "you'll find love", "you'll go broke"]
    # @fortune = "you'll be rich"
    fortune = fortunes.shuffle
    @fortune = fortune[0]
    
    render 'fortunes.json.jb'
  end
end
