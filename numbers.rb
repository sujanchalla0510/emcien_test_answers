class Numbers
  attr_accessor :s

  def initialize
    @s = (1..100000).select { |num| num % 19 == 0 }
  end

  def question_one
    @s.count
  end

  def question_two
    count=0
    @s.each do |num|  
      sqr = (num ** 2).to_s
      if sqr.end_with? "1"
        count += 1
      end
    end
    count
  end

  def question_three
    count=0
    @s.each do |num|
      reflection = num.to_s.reverse.to_i
      if @s.include?(reflection) 
        count += 1
      end
    end
    count
  end

  def question_four
    @s.select { |num| @s.include?(num / 19) }.count
  end

end

answers = Numbers.new
puts "No of numbers in S are #{answers.question_one}"
puts "No of numbers in S have a square that ends in 1 are #{answers.question_two}"
puts "No of numbers in S have a reflection that is also in S are #{answers.question_three}"
puts "No of numbers in S can be multiplied by some other number in S to produce a third number in S are #{answers.question_four}"