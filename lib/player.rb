require_relative "scrabble"
class Player

  attr_reader :plays

  def initialize(name)
    @plays = []
  end

  def name
    "Alex"
  end

  def play(word)
    @word = word
    plays << @word
  end

  def total_score
    if @plays == []
      0
    else
      @total_score = @plays.map do |word|
        Scrabble.score(word)
      end
      @total_score.inject(:+)
    end
  end

  def won?
    total_score > 100
  end

end
