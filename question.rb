#Question
#1. I need to have attributes of the question. for e.g. Question, Right Answer, Type of Question - Chemistry, Math, Physics
#2. I need to have methods which are as follows:
  #a. Method that generates the question - also the right answer, set its property what type of question
  #b. Check whether the answer given by the user is right or wrong

class Question 

  attr_accessor :question, :right_answer

  def generate
    number1 = rand(20) + 1
    number2 = rand(20) + 1
    @right_answer = number1 + number2
    @question = "What is #{number1} + #{number2}?"
  end

end