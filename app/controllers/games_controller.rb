require "open-uri"
require "json"

class GamesController < ApplicationController
  def new
    letters = "abcdefghijklmnopqrstuvwxyz"
    @letters = []
    10.times { @letters << letters[rand(26)] }
  end

  def score
    # raise
    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    words = URI.open(url).read
    verification = JSON.parse(words)
    @result = 'This word exist' if verification['found'] == true


    # @letters = ?

  end
end
