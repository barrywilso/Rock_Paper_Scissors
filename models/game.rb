class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play()
    case
    when @hand1 == @hand2
      return "Draw"
    when @hand1.include?("rock") && @hand2.include?("scissors")
      return "Rock"
    when @hand1.include?("paper") && @hand2.include?("rock")
      return "Paper"
    when @hand1.include?("scissors") && @hand2.include?("paper")
      return "Scissors"
    when @hand2.include?("rock") && @hand1.include?("scissors")
      return "Rock"
    when @hand2.include?("paper") && @hand1.include?("rock")
      return "Papers"
    when @hand2.include?("scissors") && @hand1.include?("paper")
      return "Scissors"
    end
  end
end
