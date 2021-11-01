class Game
  attr_reader :ask, :answer

  def initialize(ask, answer)
    @ask = ask
    @answer = answer
  end
end

q1 = "Who is arsenal's highest goal scorer of all time?\n(a)Emmanuel Adebayor\n(b)Robin Van Persie\n(c)Thiery Henry"
q2 = "What is the name of Arsenal football club stadium?\n(a)Emirate Stadium\n(b)Highbury Stadium\n(c)Hale End stadium"
q3 = "Arsenal player with most red card\n(a)Granit Xhaka\n(b)Mathieu Flamini\n(c)Patrick Vieira"
q4 = "Arsenal player with Assist\n(a)Mesuit Ozil\n(b)Thiery Henry\n(c)Cesc Fabregas"

questions = [
  Game.new(q1, 'c'),
  Game.new(q2, 'a'),
  Game.new(q3, 'c'),
  Game.new(q4, 'b')
]

def run_game(questions)
  score = 0
  questions.each do |question|
    puts question.ask
    your_ans = gets.chomp
    score += 1 if your_ans == question.answer
  end
  puts "You scored #{score}/ #{questions.size}"
end
run_game(questions)
