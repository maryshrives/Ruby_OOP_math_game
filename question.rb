class Question
  attr_reader :num1, :num2

  def self.num1
    @num1 = rand(1..20)
  end

  def self.num2
    @num2 = rand(1..20)
  end

  # def initialize
  #   @num1 = rand(1..20)
  #   @num2 = rand(1..20)
  # end

  def self.validation(input)
    input.to_i == (@num1 + @num2)
  end
end